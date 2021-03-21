provider "aws" {
  region = var.aws_region #  to use "us-east-1"
}


#  to use "us-east-1" or other region that 
#  it is easy way to create dynamic code with variable :)
#  you have to create the variable.tf file and put the "aws_region"
# also you must configure your module and give the value under the module 