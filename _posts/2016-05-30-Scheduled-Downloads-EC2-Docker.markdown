---
layout: default
title: Scheduled Downloads using AWS EC2 and Docker
headline: Scheduled Downloads using AWS EC2 and Docker
abstract: Using AWS for automated downloads
---
This post describes a setup for automated batch retrieval of
intraday stock prices from [Google Finance](https://www.google.co.uk/finance) 
followed by upload to 
[Amazon Web Services Simple Storage Solution](https://aws.amazon.com/s3) (AWS S3),
using [Docker](https://www.docker.com) for deployment of the application.  

The main focus is on the DevOps aspects of identifying the separate system 
components and how to connect them together.  This should enable reuse of
this approach for more general data analysis applications. 

# System Components
The system consists of the following data flow components:

- __Application__ - the part that performs an analysis function by processing
  input data and producing output.  For the application in this post the
  input data is a list of stock tickers and the output data is a set of
  time series intraday stock prices.
- __Runtime__ - the environment in which the application runs.  Here we have
  an application written in [Python](https://www.python.org) and the
  runtime provides and environment that can interpret this code and provide
  access to the necessary libraries.
- __Machine__ - the environment on which the runtime executes, for
  example a laptop or a cloud-based virtual machine such as an 
[Amazon Web
  Services Elastic Compute Cloud](https://aws.amazon.com/ec2) (AWS EC2)
  instance.
- __Source__ - the data source.  This is a csv file containing the list of tickers to
  retrieve from the Google Finance API accessible via http.
- __Sink__ - the output data location.  This is an S3 bucket used to store
  the downloaded data.

In addition there are security components present:

- __Policy__ - a statment specifying what Actions are Allowed or Denied on a set
  of Resources.  By default all actions are Denied so a policy document
  will be neeeded for an actor in the system to perform actions.
- __User__ - an individual user of the system e.g. mattmcd.  A user may have
  an associated set of attached policies or they may additionally be a
  member of one or more groups and inherit policies from those groups.
- __Group__ - a set of users with common policies, e.g. Administrators with
  AdministratorAccess policy.  
- __Credentials__ - tokens that identify a user.  Here this is an API key ID
  and secret associated with each unique user.
- __Role__ - similar to a user as a role is an identity with associated
  policies but differs in that a role can be assumed by any entity needing
  access to that role.  Additionally, a role does not have any associated
  credentials instead generating these dynamically when needed.

# Application
The application considered in this post is the first stage of an Extract-Transform-Load ([ETL](https://en.wikipedia.org/wiki/Extract,_transform,_load)) pipeline for 
analysis of intraday time series data.  It takes a list of tickers from a csv file,
queries the Google Finance API to get price and volume information over 1 minute 
intervals for the previous 10 days for each ticker, and then uploads the retrieved data
to S3.

The language used for this task is Python, making use of a number of useful
libraries such as:

- [boto3](https://was.amazon.com/sdk-for-python) for manipulating the AWS SDK
- [pandas](https://pandas.pydata.org) for working with data frames
- [urllib2](https://docs.python.org/2/library/urllib2.html) for retrieving
  data from the web

A common problem with deploying Python applications is packaging 
the code with the libraries it depends on, so that the code can be run on
the deployed application host correctly.  A number of 
[packaging solutions](https://wiki.python.org/moin/deployment) exist,
however here we have chosen to use Docker for constructing a packaged
application.

## Docker
Docker is a tool for constructing __software containers__ which make use of [OS level vitualization](https://en.wikipedia.org/wiki/Operating-system-level_virtualization)
to allow packaged applications to run in isolated user spaces inside the 
host OS.  What this means in practice is that it can be used as a form of virtual
environment construction where the container not only contains the virtual environment
with a set of installed libraries but also contains the platform allowing the 
construction of virtual environments, in this case the 
[Python Anaconda](https://www.continuum.io/downloads) distribution.  

Deployment  of the application code that runs locally against a set of installed packages
is achieved by constructing a set of Docker images replicating the local 
environment.  These Docker images are constructed by creating a Dockerfile
specifying a base image to use, then a set of commands that populate the new image
with packages, set up environment variables, create users, etc.

For this deployment two docker images have been created:

- [Python Component Runtime](https://hub.docker.com/r/mattmcd/pcr/) (PCR) built on top of the continuumio/miniconda 
  Docker image.  This acts as a base runtime with common useful packages such as Pandas.
- [PyAnalysis](https://hub.docker.com/r/mattmcd/pyanalysis/) is built on top of PCR and contains a
  checkout of the analysis code, together with some data files such as the list of tickers to download.  The
  Dockerfile for this image also specifies the command to by run when the image is run by the Docker
  engine if no other command to run is specified.  In this case the command is to run the 
  download_intraday.py script.

These images are automatically built by [Travis CI](https://travis-ci.org/getting_started) whenever a new commit
is made to their respective [GitHub](https://github.com) repository.

## AWS
As ticker data is downloaded from Google Finance it is saved to a local file.
When running the analysis application locally this data will persist.  
However when running the Docker container the container (and its file system)
is deleted after each run so this data must be copied to a persistent storage 
location, in this case S3.  The code for this (from mda/finance.py) is shown below:

    def copy_to_s3(download_date=None):
        """Copy downloaded files to S3
        :return: <none> Creates files on S3
        """
        dest_bucket = 'ftse100'
        files = os.listdir(os.path.join(dataLoc, download_date))
        s3 = boto3.resource('s3')
        bucket = s3.Bucket(dest_bucket)
        if dest_bucket not in map(lambda b: b.name, s3.buckets.all()):
            bucket.create(CreateBucketConfiguration={'LocationConstraint': 'eu-west-1'})
        for fname in files:
            bucket.upload_file(os.path.join(dataLoc, download_date, fname),
                               'raw/' + download_date + '/' + fname)


# Policy
When running locally the application code makes use of the user's $HOME/.aws 
directory for authentication to use the AWS services.  While it is possible
to include these credentials in the Docker image (NB: particularly not a good
idea for public GitHub repositories) it is better to use the 
[AWS Identity and Access Management](https://aws.amazon.com/iam/) (IAM) infrastructure
to achieve the same effect.
Create a policy called s3\_upload that allows upload access to S3:

    {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:PutObject",
                "s3:ListAllMyBuckets",
                "s3:ListBucket",
                "s3:CreateBucket"
            ],
            "Resource": "*"
        }
      ]
    }

# Role 
Create a Role called DataProcessor and attach the s3\_upload policy. 
This role is applied on launch to the EC2 instance that runs the Docker 
image.  

# Machine
An example [Vagrantfile](https://www.vagrantup.com/) below uses the
[vagrant-aws](https://github.com/mitchellh/vagrant-aws) plugin to launch an
EC2 instance with the correct role attached, using a Ubuntu 14.04 AMI and a
security group that allows SSH access only via the private key specified.


    Vagrant.configure("2") do |config|
      config.vm.box = "aws-box"
      
      config.vm.provider :aws do |aws, override|
        aws.access_key_id = "INSERT KEY ID"
        aws.secret_access_key = "INSERT SECRET KEY"
        aws.keypair_name = "INSERT KEYPAIR NAME"
        aws.elastic_ip = false 
        aws.region = "eu-west-1"
        aws.instance_type = "t2.micro"
        aws.subnet_id = "INSERT SUBNET ID"
        aws.ami = "ami-f95ef58a"
        aws.iam_instance_profile_name = "DataProcessor"
        aws.tags = { 'Name' => 'mda-cron-vm' }
        override.ssh.username = "ubuntu"
        override.ssh.private_key_path = "INSERT PATH TO .pem FILE"
      end

      config.vm.provision "docker",
        images: ["mattmcd/pyanalysis"]
    end

Once the machine has started the scheduled download job is created by
connecting to the machine over SSH,
[installing
Docker](https://docs.docker.com/engine/installation/linux/ubuntulinux/), and 
adding a run\_intraday.sh script that retrieves and runs the Docker image:

    #!/bin/bash
    docker run --rm -v /home/ubuntu/Work/Data:/home/ubuntu/Work/Data mattmcd/pyanalysis

The crontab is then edited to schedule when the job should run:

    # m h  dom mon dow   command
    MAILTO=""
    11 5 * * SAT /home/ubuntu/run_intraday.sh > /home/ubuntu/cron.log 2>&1

For automated setup [Fabric](http://www.fabfile.org/) can be used for
installing Docker on the EC2 instance, uploading the run script and editing
the crontab.  However a better option may be to use a dedicated AMI
designed for use with AWS [Elastic Container
Service](https://aws.amazon.com/ecs/) (ECS).  This will be covered in a
future post.

# Conclusion
This post has covered deployment of Python analysis code to a cloud
platform using Docker.  The main focus has been on identifying the system
components and how they interact.  The linked resources should serve as a
starting point for anyone intending to do a similar deployment.  

## About Me
I am [Matt McDonnell](https://www.matt-mcdonnell.com) and am currently 
working as a Data Scientist for a
Cambridge (UK) based startup. Previously my main language has been MATLAB
used in Quantitative Analyst and Quantitative Developer roles for a London
based asset management firm, as well as in a Technical Consultant role for
MathWorks.

