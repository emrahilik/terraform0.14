# terraform 0.14.7 version or above

### Please do not hesitate to use this module to create your resources easly in your AWS account :)

```

module "wordpress" {
  app_name = "wordpress"   # we can use application name as a security group name which is much more easy to manage
  source = "../basic_terraform4" # or give the github relative path 
  # if you want to use your module and deploy multiple region you have to go to your code 
  # and you have to work with your provider. 
  aws_region       = "us-east-1"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
  key_name         = "wordpress_key" # developer should  specify  the key name and it must be unique 
  key_location    =  "~/.ssh/id_rsa.pub"
  ssh_cidr_blocks =  [    
       "127.0.0.1/32",
       "0.0.0.0/0"
  ]             # we can create a list of ip adress here or devoloper can do it.
}

#module "joomla" {
# app_name = "joomla" # we can use application name as a security group name which is much more easy to manage
#  source           = "../basic_terraform4" #  give the github relative path or terrraform code path 
#  aws_region       = "us-east-2"
#  desired_capacity = 1
#  max_size         = 1
#  min_size         = 1
#  key_name         = "joomla_key" # developer should  specify  the key name and it must be unique 
#   key_location    =  "~/.ssh/id_rsa.pub"
#}
#
#module "apache" {
#app_name = "apache"  # we can use application name as a security group name which is much more easy to manage
#  source           = "../basic_terraform4" # give the github relative path or terrraform code path
#  aws_region       = "us-east-1"
#  desired_capacity = 1
#  max_size         = 1
#  min_size         = 1
#  key_name         = "apache_key" # developer should  specify  the key name and it must be unique 
#  key_location    =  "/.ssh/id_rsa.pub"
#}

```

### Please run :
terraform init 
terraform apply 



#output "AZ" {
#    value = data.aws_availability_zones.all.names 
#}


# you can use your own ami as a golden image 

### data "aws_ami" "image" {
#  most_recent = true
#  owners = ["self"] # you can use your own ami as a golden image 
##}


#resource "aws_autoscaling_group" "yusuf" {
#name = "terraform-asg-yusuf"
#launch_configuration = "${aws_launch_configuration.newlaunch.id}"
#availability_zones = data.aws_availability_zones.all.names
#min_size = 1
#max_size = 10
#tags {
#    key = "name"
#    value = "terraform-asg-yusuf"
#    propagate_at_launch = true
#}

#"us-east-1a", or you can specify each az here or you can use data.aws_availability_zone.all.names 
#"us-east-1b", or you can specify each az here or you can use data.aws_availability_zone.all.names 
#"us-east-1c", or you can specify each az here or you can use data.aws_availability_zone.all.names 
# but you have top specify under image.tf file