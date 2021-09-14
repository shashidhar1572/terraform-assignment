This repo is for terraform assignment

how to use:
step 1:
Configure your credentails on a file
easy way is to use aws command

#aws configure --profile testforassignment

step 2:
create a **anyname**.tfvars file after downloading the repo and add below values or something similar

########################

aws_region  = "us-east-1"
environment = "test"
application = "sha"

vpc_cidr             = "192.168.8.0/21"
private_subnet_cidrs = ["192.168.8.0/24", "192.168.10.0/24", "192.168.12.0/24"]
public_subnet_cidrs  = ["192.168.9.0/26", "192.168.11.0/26", "192.168.13.0/26"]


cluster_version = "1.20"

########################

step 3:

Once you have the file and repo downloded on same folder try running terraform stages init/plan stages to see the output.

terraform init && terraform plan