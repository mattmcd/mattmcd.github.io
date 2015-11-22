---
layout: default
title: GitHub Blogging with Branches Workflow
headline: GitHub Blogging with Branches Workflow
abstract: Working with draft content on GitHub pages
---
I've recently started playing around with [Medium](https://medium.com/@drmattmcd) and like it as a blog publication platform.  In terms of creating content though my preference is to use [GitHub pages](https://mattmcd.github.io/) as the source repository and then pull from there to other platforms.  This keeps everything under version control and also lets me use [Markdown](https://daringfireball.net/projects/markdown/) formatted text as the input rather than using the Medium online rich text editor. 

This post describes how to use [git branches](https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging) to work on draft content.  GitHub pages will generate static HTML from any files pushed to the _master_ branch on GitHub for the _username.github.com_ project.  In order to work on drafts we need to create a branch for the post, work on the content and then merge the branch into master for publication.

Taking this post as an example the first step was to create a branch for the post, in this case *20151122_Blogging* (timestamp plus title).  Within GitHub this is done by selecting 'create branch' from the branch dropdown on the project page.  From the command line the same thing can be accomplished from a checked out master branch by using:

    git branch 20151122_Blogging 
    git checkout 20151122_Blogging
    
or 'git checkout -b 201511Blogging' to do creation and switch to new branch in one step.  In this case the branch will be created on the local machine so will need to be pushed to GitHub to access it through the GitHub website.

Working within GitHub the next step is to create the new Markdown file in the _posts directory of the project, here 2015-11-22-GitHub-Blogging-Branches-WOrkflow.markdown.  From the command line you can instead follow the usual workflow of creating a new file, editing, committing etc.  In my case this means I can work with the file either online through the GitHub web interface or offline using Vim.

Once the blog post is finished, commit everything on the blog branch, switch to master and then merge from the blog branch.  From the command line:

    git checkout master
    git merge 20151122_Blogging
    
If working locally you will also need to push back to GitHub.

And that is basically it.  
