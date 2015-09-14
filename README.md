# lita-auvik-aws

[![Build Status](https://travis-ci.org/digitaljedi2/lita-auvik-aws.png?branch=master)](https://travis-ci.org/digitaljedi2/lita-auvik-aws)
[![Build Status](https://travis-ci.org/auvik/lita-auvik-aws.svg?branch=master)](https://travis-ci.org/auvik/lita-auvik-aws)
[![Coverage Status](https://coveralls.io/repos/digitaljedi2/lita-auvik-aws/badge.png)](https://coveralls.io/r/digitaljedi2/lita-auvik-aws)
[![Coverage Status](https://coveralls.io/repos/auvik/lita-auvik-aws/badge.svg?branch=master&service=github)](https://coveralls.io/github/auvik/lita-auvik-aws?branch=master)

This plugin handler will return a table response from the aws cli.  This will work with different profiles if you set them up under the
account in which this lita bot runs under

## Installation

Add lita-auvik-aws to your Lita instance's Gemfile:

``` ruby
gem "lita-auvik-aws"
```

## Configuration

Place an ~/.aws/config and ~/.aws/credentials file uder the user that lita runs as.

## Usage

lita aws <profile> will print out all running ec2 instances under the profile setup 
