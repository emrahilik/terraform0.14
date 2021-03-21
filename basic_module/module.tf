module "wordpress"{
    source = "../basic_terraform4"  # or give the github relative path 
}


module "joomla"{
    source = "../basic_terraform4"  # or give the github relative path 
}

module "apache"{
    source = "../basic_terraform4"  # or give the github relative path 
}