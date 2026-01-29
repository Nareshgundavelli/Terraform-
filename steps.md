## ⚙️ Terraform Configuration

### AWS Provider Configuration

provider "aws" {
  region = "us-east-1"
}
```

This block tells Terraform to use **AWS** as the cloud provider and deploy resources in the **us-east-1** region.

---

### EC2 Instance Resource

resource "aws_instance" "server" {
  ami           = "ami-id"
  instance_type = "t3.micro"
}

This resource block creates an EC2 instance with:

* A specified AMI ID
* Instance type `t3.micro` (free-tier eligible)

---

## 🚀 Terraform Commands Used

### 1️⃣ `terraform init`

Initializes the Terraform working directory by:

* Downloading required provider plugins
* Preparing the backend

terraform init

---
### 2️⃣ `terraform validate`

Validates the Terraform configuration files for syntax and correctness.

terraform validate

---

### 3️⃣ `terraform plan`

Generates an execution plan showing what Terraform will create, modify, or destroy.

terraform plan

---

### 4️⃣ `terraform apply`

Applies the configuration and creates the AWS EC2 instance.

terraform apply -auto-approve

---

## 🧹 Cleanup Resources

To delete the created infrastructure and avoid unnecessary costs:

terraform destroy -auto-approve

Note: 
Do not commit .terraform/ directory

Do not commit terraform.tfstate files

Use .gitignore to exclude generated and sensitive files

Always review terraform plan before applying changes
