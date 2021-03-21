module "wordpress"{
    source = "../basic_terraform4"  # or give the github relative path 
                        # if you want to use your module and deploy diffrent region you have to go your code 
                        # and you have to work with your provider. 
    aws_region = "us-east-1"
    desired_capacity   = 1
    max_size           = 1
    min_size           = 1

}

module "joomla"{
    source = "../basic_terraform4"  # or give the github relative path 
    aws_region = "us-east-1"
    desired_capacity   = 1
    max_size           = 1
    min_size           = 1
}

module "apache"{
    source = "../basic_terraform4"  # or give the github relative path 
    aws_region = "us-east-1"
    desired_capacity   = 1
    max_size           = 1
    min_size           = 1
}