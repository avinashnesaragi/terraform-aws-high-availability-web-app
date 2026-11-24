# Terraform AWS High Availability Web Application

## Overview

This project provisions a highly available web application infrastructure on AWS using Terraform.

The infrastructure deploys two Apache web servers across two Availability Zones and uses an Application Load Balancer to distribute incoming HTTP traffic between them.

## Architecture

<img width="2486" height="696" alt="Architecture" src="https://github.com/user-attachments/assets/4380b264-4b61-4c58-aa3d-3d45afaf2be4" />


## Architecture


Internet
   │
   ▼
Internet Gateway
   │
   ▼
Application Load Balancer
   │
   ├── EC2 Web Server 1
   │   └── Public Subnet 1 ── Availability Zone 1
   │
   └── EC2 Web Server 2
       └── Public Subnet 2 ── Availability Zone 2


## AWS Resources Created

- VPC
- Two public subnets in different Availability Zones
- Internet Gateway
- Route Table and Route Table Associations
- Security Group for HTTP and SSH access
- Two Ubuntu EC2 instances
- Apache HTTP Server on both EC2 instances
- Application Load Balancer
- Target Group
- Listener and Health Checks

## Technologies Used

- Terraform
- AWS
- Amazon VPC
- Amazon EC2
- Application Load Balancer
- Apache HTTP Server
- Linux
- Bash
- Git and GitHub

## Project Files

main.tf          # AWS infrastructure configuration
provider.tf      # Terraform and AWS provider configuration
userdata1.sh     # User Data script for EC2 Server 1
userdata2.sh     # User Data script for EC2 Server 2

## How to Run the Project

Initialize Terraform:
terraform init

Format Terraform files:
terraform fmt

Validate Terraform configuration:
terraform validate

Preview AWS resources:
terraform plan


Create the infrastructure:
terraform apply

Type "yes" when Terraform asks for confirmation.

## Verify the Deployment

After Terraform completes:

1. Open the Application Load Balancer DNS name in a web browser.
2. Confirm the website is displayed.
3. Open the AWS Target Group.
4. Confirm both EC2 instances show a healthy status.

## Screenshots

## Terraform Apply Complete

<img width="1519" height="978" alt="Terraform Infrastructure as Code" src="https://github.com/user-attachments/assets/da892a28-8d00-4830-adab-7b689fa4a9b8" />


### Application Load Balancer

<img width="1463" height="709" alt="AWS Load Balancer Configuration" src="https://github.com/user-attachments/assets/c5d5c27d-48de-4bbe-8639-9c1cafcaa004" />


### Healthy Target Group

<img width="1441" height="657" alt="AWS Load Balancer Target Group" src="https://github.com/user-attachments/assets/e2596878-bd88-4aba-a05a-01f5d9cbe803" />

### Live Web Application

<img width="931" height="366" alt="Avinash Nesaragi&#39;s AWS Website" src="https://github.com/user-attachments/assets/61c4b564-7b56-4d2f-b2c1-365188b4cced" />

<img width="920" height="376" alt="Avinash&#39;s AWS Website-2" src="https://github.com/user-attachments/assets/eb29b335-df25-4da8-95e8-291d300b8ee6" />

## Output in Terminal

<img width="797" height="140" alt="Output" src="https://github.com/user-attachments/assets/514f7b38-778f-4a8f-a0b3-120a106928be" />

## Cleanup

To avoid unnecessary AWS charges, destroy all resources after testing:

terraform destroy

Type "yes" to confirm deletion.

## Author

Avinash Nesaragi
