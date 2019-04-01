# Apex Docker
Apex Docker image to use to automation deploy for AWS Lambda with CircleCI.

# Installation

First as to create folder called `.circle` and create file called `config.yml` inside your project folder. After that, in `config.yml` file, here is sample code to deploy **Lambda** to AWS.

```
# Python CircleCI 2.0 configuration file
#
# Check https://circleci.com/docs/2.0/language-python/ for more details
#
version: 2
jobs:
  build:
    docker:
      - image: ppshein/apex-docker:latest

    steps:
      - checkout

      - run:
          name: install dependencies
          command: |
            apex deploy --region ap-southeast-1
```

# AWS Authentication

We need to setup **AWS** creditential in **CircleCI** as to add environment variable inside it.

`AWS_ACCESS_KEY_ID`
`AWS_DEFAULT_REGION`
`AWS_SECRET_ACCESS_KEY`
