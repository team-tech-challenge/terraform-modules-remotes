# terraform-modules-remotes

[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/StrapDown.js/graphs/commit-activity)
[![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)](https://lbesson.mit-license.org/)
[![Terraform](https://img.shields.io/badge/Terraform-v1.0.0+-623CE4?logo=terraform)](https://img.shields.io/badge/Terraform-v1.0.0+-623CE4?logo=terraform)
[![Terraform AWS Documentation](https://img.shields.io/badge/Terraform%20AWS-Documentation-623CE4?logo=terraform)](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
[![Terraform Documentation](https://img.shields.io/badge/Terraform-Documentation-623CE4?logo=terraform)](https://www.terraform.io/docs/index.html)

### This repository contains Terraform modules for AWS resources.

##  **Structure of the Repository**

The repository is structured as follows:


```
./
├── LICENSE
├── README.md
├── aws_api_gateway_deployment
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── versions.tf
├── aws_api_gateway_integration
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_api_gateway_method
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_api_gateway_resource
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_api_gateway_rest_api
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_api_gateway_stage
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── versions.tf
├── aws_database_subnet_group
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_databases
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_db_parameter_group
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_dynamodb_table
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_ecr_lifecycle_policy
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_ecr_repository
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_internet_gateway
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_lambda_event_source_mapping
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_lambda_function
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_lambda_permission
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_nat_gateway
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_network_acl
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_route_table
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_secret_manager
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_secret_manager_version
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_security_group
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
├── aws_subnets
│   ├── README.md
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
│   └── version.tf
└── aws_vpc
    ├── README.md
    ├── main.tf
    ├── output.tf
    ├── variables.tf
    └── version.tf
```

##  **Modules**

###  ***Modules API Gateway***

* This module creates the resources for an API Gateway:
    * API Gateway
        * [aws_api_gateway_rest_api](./aws_api_gateway_rest_api)
    * Resource:
        * [aws_api_gateway_resource](./aws_api_gateway_resource)
    * Method:
        * [aws_api_gateway_method](./aws_api_gateway_method)
        * [aws_api_gateway_method_response](./aws_api_gateway_method_response)
    * Integration
        * [aws_api_gateway_integration](./aws_api_gateway_integration)
    * Deployment
        * [aws_api_gateway_deployment](./aws_api_gateway_deployment)
    * Stage
        * [aws_api_gateway_stage](./aws_api_gateway_stage)

###  ***Modules AWS RDS***

* This module creates the resources for an AWS RDS:
    * Database Subnet Group:
        * [aws_database_subnet_group](./aws_database_subnet_group)
    * Database Instance:
        * [aws_databases](./aws_databases)
    * Database Parameter Group:
        * [aws_db_parameter_group](./aws_db_parameter_group)

### ***Modules DynamoDB***

* This module creates the resources for an AWS DynamoDB:
    * DynamoDB Table:
        * [aws_dynamodb_table](./aws_dynamodb_table)

###  ***Modules Elastic Container Registry***

* This module creates the resources for an AWS Elastic Container Registry (ECR):
    * ECR Repository:
        * [aws_ecr_repository](./aws_ecr_repository)
    * ECR Lifecycle Policy:
        * [aws_ecr_lifecycle_policy](./aws_ecr_lifecycle_policy)

### ***Modules Lambda***

* This module creates the resources for an AWS Lambda:
    * Lambda Function:
        * [aws_lambda_function](./aws_lambda_function)
    * Lambda Permission:
        * [aws_lambda_permission](./aws_lambda_permission)
    * Event Source Mapping:
        * [aws_lambda_event_source_mapping](./aws_lambda_event_source_mapping)

### ***Modules Secrets Manager***

* This module creates the resources for an AWS Secrets Manager:
    * Secret:
        * [aws_secret_manager](./aws_secret_manager)
    * Secret Version:
        * [aws_secret_manager_version](./aws_secret_manager_version)

### ***Modules Security Group***

* This module creates the resources for an AWS Security Group:
    * Security Group:
        * [aws_security_group](./aws_security_group)

### ***Modules VPC***

* This module creates the resources for an AWS VPC:
    * VPC:
        * [aws_vpc](./aws_vpc)## Requirements

### ***Modules Subnet***

* This module creates the resources for an AWS Subnet:
    * Subnet:
        * [aws_subnet](./aws_subnets)


### ***Modules Route Table***

* This module creates the resources for an AWS Route Table:
    * Route Table:
        * [aws_route_table](./aws_route_table)


### ***Modules Internet Gateway***

* This module creates the resources for an AWS Internet Gateway:
    * Internet Gateway:
        * [aws_internet_gateway](./aws_internet_gateway)


### ***Modules NAT Gateway***

* This module creates the resources for an AWS NAT Gateway:
    * NAT Gateway:
        * [aws_nat_gateway](./aws_nat_gateway)


### ***Modules Network ACL***

* This module creates the resources for an AWS Network ACL:
    * Network ACL:
        * [aws_network_acl](./aws_network_acl)