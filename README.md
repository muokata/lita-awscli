# lita-aws


This plugin handler will return a table response from the aws cli.  This will work with different profiles if you set them up under the
account in which this lita bot runs under

## Installation

Add lita-aws to your Lita instance's Gemfile:

``` ruby
gem "lita-aws", git: 'git@github.com:muokata/lita-aws.git'
```

## Configuration

Place an ~/.aws/config and ~/.aws/credentials file uder the user that lita runs as.

## Usage

lita aws <profile> will print out all running ec2 instances under the profile setup 
