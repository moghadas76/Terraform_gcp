
# Terraform GCP Project

Welcome to the **Terraform Project** repository! This project is designed to manage and automate the provisioning of cloud infrastructure using [Terraform](https://www.terraform.io/), an Infrastructure as Code (IaC) tool.

## Table of Contents
1. [About](#about)
2. [Features](#features)
3. [Requirements](#requirements)
4. [Setup](#setup)
5. [Usage](#usage)
6. [Project Structure](#project-structure)
7. [Contributing](#contributing)
8. [License](#license)

## About

This repository contains Terraform configurations to manage infrastructure in a reliable, scalable, and reusable way. The project aims to simplify the process of deploying and maintaining resources across various cloud platforms.

## Features

- **Multi-cloud support**: Easily manage infrastructure on AWS, Azure, GCP, or other cloud providers.
- **Modular design**: Reusable modules for efficient infrastructure management.
- **Scalability**: Define and deploy resources that scale based on your application's needs.
- **Version control**: Track and maintain changes to your infrastructure configurations.

## Requirements

- Terraform v1.0.0 or later
- Cloud provider credentials (e.g., AWS, Azure, GCP)
- Supported operating systems: Windows, macOS, Linux

## Setup

### Install Terraform
Follow the [Terraform installation guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) to set up Terraform on your system.

### Clone the Repository
```bash
git clone https://github.com/moghadas76/Terraform_gcp.git
cd terraform-project
```

### Configure Environment Variables

#### AWS
Set up necessary environment variables for your cloud provider:
```bash
export AWS_ACCESS_KEY_ID="your-access-key"
export AWS_SECRET_ACCESS_KEY="your-secret-key"
export AWS_DEFAULT_REGION="your-region"
```
Replace with relevant variables for your provider if not using AWS.


#### GCP

To configure Terraform with Google Cloud Provider (GCP), you typically need to set the following environment variables:

#### Required Environment Variables
1. **`GOOGLE_CREDENTIALS`**  
   - The path to your service account key JSON file or the JSON content of the key itself.
   - Example:
     ```bash
     export GOOGLE_CREDENTIALS=$(cat /path/to/your-service-account-key.json)
     ```

2. **`GOOGLE_PROJECT`**  
   - The ID of your GCP project.
   - Example:
     ```bash
     export GOOGLE_PROJECT="your-project-id"
     ```

3. **`GOOGLE_REGION`**  
   - The region where your resources will be created.
   - Example:
     ```bash
     export GOOGLE_REGION="us-central1"
     ```

4. **`GOOGLE_ZONE`** *(optional)*  
   - The specific zone within a region where resources will be created.
   - Example:
     ```bash
     export GOOGLE_ZONE="us-central1-a"
     ```

#### Using a Service Account Key File
If you prefer to use a service account key file directly instead of setting the JSON as an environment variable, you can set:
```bash
export GOOGLE_APPLICATION_CREDENTIALS="/path/to/your-service-account-key.json"
```

### Notes:
- These environment variables can be omitted if you configure these values in the `provider` block within your Terraform configuration file (`main.tf`):
  ```hcl
  provider "google" {
    credentials = file("path/to/your-service-account-key.json")
    project     = "your-project-id"
    region      = "us-central1"
    zone        = "us-central1-a"
  }
  ```
- Using the `GOOGLE_APPLICATION_CREDENTIALS` variable is recommended when managing credentials for multiple tools that interact with GCP.

Make sure your service account has sufficient permissions for the resources you plan to manage.


## Usage

1. **Initialize Terraform**  
   Run the following command to initialize the project and download required providers:
   ```bash
   terraform init
   ```

2. **Plan Infrastructure Changes**  
   Preview the changes Terraform will make to your infrastructure:
   ```bash
   terraform plan
   ```

3. **Apply Changes**  
   Deploy the infrastructure:
   ```bash
   terraform apply
   ```

4. **Destroy Infrastructure** *(optional)*  
   Tear down the deployed infrastructure:
   ```bash
   terraform destroy
   ```

## Project Structure

```
terraform-project/
├── modules/                  # Reusable Terraform modules
├── environments/             # Environment-specific configurations (e.g., dev, prod)
├── main.tf                   # Root configuration file
├── variables.tf              # Input variable definitions
├── outputs.tf                # Output values
├── terraform.tfvars          # Default variable values
└── README.md                 # Project documentation
```

## Contributing

We welcome contributions to improve this project! To contribute:

1. Fork this repository.
2. Create a feature branch: `git checkout -b feature-name`.
3. Commit your changes: `git commit -m "Add feature description"`.
4. Push to the branch: `git push origin feature-name`.
5. Open a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

---

Feel free to customize the README further based on your project's specifics!
