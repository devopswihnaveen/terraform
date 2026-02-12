# 🚀 Terraform Infrastructure Automation Project

## 📌 Overview

This repository contains Infrastructure as Code (IaC) built using **Terraform** to provision and manage cloud infrastructure in an automated, repeatable, and scalable way.

This project demonstrates real-world DevOps practices including:

- Infrastructure as Code (IaC)
- Modular Terraform structure
- Remote backend configuration
- State management
- Secure provider authentication
- Version control best practices
- Production-ready structure

---

## 🛠 Tech Stack

- Terraform
- AWS (or your cloud provider)
- Git & GitHub
- Remote Backend (S3 + DynamoDB recommended)

---

## 📂 Project Structure

```
Terraform/
│
├── main.tf              # Main infrastructure resources
├── provider.tf          # Provider configuration
├── variables.tf         # Input variables
├── outputs.tf           # Output values
├── terraform.tfvars     # Variable values (not committed in production)
├── .gitignore           # Ignored files
└── README.md            # Project documentation
```

---

## ⚙️ Prerequisites

Before running this project, ensure you have:

- Terraform installed (`terraform -v`)
- AWS CLI configured (`aws configure`)
- IAM user with required permissions
- Git installed

---

## 🔐 Authentication Setup

Terraform authenticates using:

- AWS CLI configured credentials  
OR  
- Environment variables:

```
export AWS_ACCESS_KEY_ID="your_access_key"
export AWS_SECRET_ACCESS_KEY="your_secret_key"
```

⚠️ Never commit secrets to GitHub.

---

## 🚀 How to Use This Project

### 1️⃣ Initialize Terraform

```
terraform init
```

This downloads required providers and initializes backend.

---

### 2️⃣ Validate Configuration

```
terraform validate
```

Checks syntax and configuration correctness.

---

### 3️⃣ Format Code (Best Practice)

```
terraform fmt
```

Ensures consistent formatting.

---

### 4️⃣ Plan Infrastructure

```
terraform plan
```

Shows what resources will be created/modified/destroyed.

---

### 5️⃣ Apply Infrastructure

```
terraform apply
```

Creates infrastructure.

To auto-approve:

```
terraform apply -auto-approve
```

---

### 6️⃣ Destroy Infrastructure

```
terraform destroy
```

Removes all managed resources.

---

## 📦 State Management

Terraform state files:

```
terraform.tfstate
terraform.tfstate.backup
```

These files:

- Store infrastructure metadata
- Map real resources to Terraform config
- Should NEVER be committed

### ✅ Best Practice

Use remote backend:

- AWS S3 for state storage
- DynamoDB for state locking

Example backend configuration:

```hcl
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "terraform/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
```

---

## 🔄 Versioning

Terraform version is controlled using:

```hcl
terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
```

---

## 🧠 Best Practices Followed

- Modular structure
- Variables used instead of hardcoding
- Outputs defined properly
- Sensitive values not committed
- `.gitignore` configured correctly
- Clean Git commit history
- Infrastructure reproducibility
- Remote state recommended

---

## 📊 Commands Cheat Sheet

| Command | Description |
|----------|-------------|
| terraform init | Initialize project |
| terraform validate | Validate config |
| terraform fmt | Format code |
| terraform plan | Preview changes |
| terraform apply | Apply changes |
| terraform destroy | Destroy infra |
| terraform show | Show current state |

---

## 🔍 Troubleshooting

### Non-fast-forward Git error
Resolve by:
```
git pull --rebase
```

### State Lock Error
Check DynamoDB lock table and remove stale lock.

---

## 📈 Future Improvements

- Convert to reusable modules
- Implement CI/CD with GitHub Actions
- Add remote backend configuration
- Add environment-based folders (dev/stage/prod)
- Integrate with Kubernetes or EKS

---

## 👨‍💻 Author

**Velanati Naveen Kumar**  
DevOps Engineer  

---

## ⭐ If You Like This Project

Give it a star ⭐ on GitHub!

---