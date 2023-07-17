# pdnd-aws-runner-python

Docker image to run github actions on EKS cluster.<br>
The image contains all the tools needed to build and deploy a pdnd etl pipeline

## Setup
Plan:
```shell script
sh ./infra/terraform.sh plan prod
```
Apply:
```
sh ./infra/terraform.sh apply prod
```