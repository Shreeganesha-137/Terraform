# AWS EC2 Infrastructure with Terraform

## 📌 Project Overview
This project provisions a full-fledged AWS infrastructure using Terraform. It includes a custom VPC, public subnet, internet gateway, route table, security group, and an EC2 instance with Apache installed via `user_data`. The goal is to demonstrate Infrastructure as Code (IaC) and automate cloud resource deployment.

## 🚀 What’s Included
- ✅ VPC with DNS support and tagging  
- ✅ Public Subnet with auto public IP allocation  
- ✅ Internet Gateway and Route Table for outbound access  
- ✅ Security Group allowing SSH access (can be restricted to personal IP)  
- ✅ EC2 instance with Apache installed and custom landing page  
- ✅ Local backend for Terraform state management  
- ✅ Modular and readable `.tf` files

## 📄 EC2 Landing Page
```html
Hello, World! This is Shree star creations. Subscribe to my YouTube Channel!

🛠️ Technologies Used
• 	Terraform
• 	AWS (EC2, VPC, Subnet, IGW, Route Table, Security Group)
• 	Linux (Ubuntu)
• 	Apache2
• 	Shell Scripting

📂 How to Use
1 Clone the repo
2 Configure your terraform.tfvars with your AWS credentials and variables

3 Run:
----Bash----
terraform init
terraform plan
terraform apply

4 SSH into the EC2 instance and verify Apache is running

📬 Contact
Shreeganesha
📧 shreestar393@gmail.com

