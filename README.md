# terraform-application-auto-scaling

<h1 align="center">
   <a href="#"> Terraform Application Auto Scaling </a>
</h1>

<h2 align="center">
    AWS - Amazon Web Service
</h2>

<p align="center">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/diogofiaminghi/terraform-project-01?color=%2304D361">

  <img alt="Repository size" src="https://img.shields.io/github/repo-size/diogofiaminghi/terraform-project-01">

   <a href="https://github.com/diogofiaminghi/terraform-project-01/commits/master">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/diogofiaminghi/terraform-project-01">
  </a>
    
   <img alt="License" src="https://img.shields.io/badge/license-MIT-brightgreen">
	
   <a href="https://github.com/diogofiaminghi/terraform-project-01/stargazers">
    <img alt="Stargazers" src="https://img.shields.io/github/stars/diogofiaminghi/terraform-project-01?style=social">
  </a>
</p>


<h4 align="center"> 
	 Status: Finished
</h4>

<p align="center">
 <a href="#description">Description</a> •
 <a href="#pre-requisites">Pre-requisites</a> • 
 <a href="#how-it-works">How it works</a> • 
 <a href="#tech-stack">Tech Stack</a> • 
 <a href="#author">Author</a> • 
 <a href="#license">License</a>

</p>


## Description

This project provisions a VPC and an EC2 instance on AWS through Terraform. In this project, the terraform.tfstate file is stored remotely in an S3 bucket. In addition, we have the creation of a Subnet, AWS Internet Gateway, Route Table and AWS Security Group. Finally, an EC2 instance is created within the Subnet. All resources will be created in the us-east-1 region.
- VPC
- Internet Gateway (IG) 
- Subnets
- Route Tables
- Security Groups
- Load Balancer
- Auto Scaling Group
- CloudWatch
- RDS

---

## Pre-requisites

Before you begin, you will need to have the following tools installed on your machine:
[Terraform] (https://www.terraform.io/) and [Git] (https://git-scm.com).
You will need to have a [AWS Account] (https://aws.amazon.com/).
In addition, it is good to have an editor to work with the code like [VSCode] (https://code.visualstudio.com/).

---

## How it works

1 - Clone this repository.

```bash
git clone git@github.com:diogofiaminghi/terraform-project-01.git
```

2 - Create an S3 bucket on AWS manually.

3 - Open de Project Folder in VSCode

4 - Edit the main.tf file. On line 13, paste the name of your S3 bucket.

```bash
bucket = "your-S3-bucket-name-here"
```

5 - Open a new bash terminal in VSCode. Create an SSH key pair named 'aws-key'.

```bash
ssh-keygen
```

6 - You must now configure your AWS Access Keys using the bash terminal.

```bash
export AWS_ACCESS_KEY_ID=XXXXXXXXXXXXXXXX
```
```bash
export AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

7 - Terraform Commands in Project Folder
```bash
terraform init
```

```bash
terraform fmt
```

```bash
terraform validate
```

```bash
terraform plan -out=plan.out
```

```bash
terraform apply plan.out
```

8 - Now, to prove that everything worked, get the 'vm_ip' in 'output' and let's connect via ssh to the newly created instance.

```bash
ssh -i aws-key ubuntu@the-public-ip-here
```
```bash
exit
```

9 - Do not forget to destroy the provisioned structure otherwise you will be able to receive invoices.
```bash
terraform destroy
```

---

## Tech Stack

The following tools were used in the construction of the project:

-   **[AWS](https://aws.amazon.com/?nc1=h_ls)**
-   **[Terraform](https://www.terraform.io/)**
-   **[VSCode](https://code.visualstudio.com/)**
-   **[Git](https://git-scm.com/)**
-   **[GitHub](https://github.com/)**

---

## Author

<a href="https://www.linkedin.com/in/diogofiaminghi/">
 <img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/100308537?s=400&u=abd27efe08d079fba2776ad691516666e8339aa5&v=4" width="100px;" alt="Diogo Fiaminghi"/>
	
[![Linkedin Badge](https://img.shields.io/badge/-Diogo_Fiaminghi-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/diogofiaminghi/)](https://www.linkedin.com/in/diogofiaminghi/) 
[![Gmail Badge](https://img.shields.io/badge/-diogofiaminghi@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:diogofiaminghi@gmail.com)](mailto:diogofiaminghi@gmail.com)

---

## License

This project is under the license [MIT](https://github.com/diogofiaminghi/terraform-application-auto-scaling/blob/1804cdb66b6d73a1ff8b62d92cacad6110d655d7/LICENSE).

Made with love by Diogo Fiaminghi 👋🏽 [Get in Touch!](Https://www.linkedin.com/in/diogofiaminghi/)

---
