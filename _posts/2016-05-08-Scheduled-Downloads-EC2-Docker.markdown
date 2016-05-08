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

- _Application_ - the part that performs an analysis function by processing
  input data and producing output.  For the application in this post the
  input data is a list of stock tickers and the output data is a set of
  time series intraday stock prices.
- _Runtime_ - the environment in which the application runs.  Here we have
  an application written in [Python](https://www.python.org) and the
  runtime provides and environment that can interpret this code and provide
  access to the necessary libraries.
- _Machine_ - the environment on which the runtime executes, for
  example a laptop or a cloud-based virtual machine such as an [Amazon Web
  Services Elastic Compute Cloud](https://aws.amazon.com/ec2) (AWS EC2)
  instance.
- _Source_ - the data source.  This is the Google Finance API accessible via
  http.
- _Sink_ - the output data location.  This is an S3 bucket used to store
  the downloaded data.

In addition there are security components present:

- _Policy_ - a statment specifying what Actions are Allowed or Denied on a set
  of Resources.  By default all actions are Denied so a policy document
  will be neeeded for an actor in the system to perform actions.
- _User_ - an individual user of the system e.g. mattmcd.  A user may have
  an associated set of attached policies or they may additionally be a
  member of one or more groups and inherit policies from those groups.
- _Group_ - a set of users with common policies, e.g. Administrators with
  AdministratorAccess policy.  
- _Credentials_ - tokens that identify a user.  Here this is an API key ID
  and secret associated with each unique user.
- _Role_ - similar to a user as a role is an identity with associated
  policies but differs in that a role can be assumed by any entity needing
  access to that role.  Additionally, a role does not have any associated
  credentials instead generating these dynamically when needed.

# Application
The application considered in this post is 


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
Create a policy called s3_upload that allows upload access to S3:

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
Create a Role called DataProcessor and attach the s3_upload policy. 

# Machine
