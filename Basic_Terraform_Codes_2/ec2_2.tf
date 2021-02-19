#resource "aws_instance" "web" {
#  ami           = "ami-047a51fa27710816e"
#  instance_type = "t2.micro"
#  key_name = aws_key_pair.deployer2.key_name  
#  associate_public_ip_address = true    # optional
#  vpc_security_group_ids = [aws_security_group.allow_tls.id] 
#     # ids or id is important here. please make sure about vpc. If need we can request multible
#     # security group id at the same time. But maximum 5 security group.
#  availability_zone = "us-east-1a"      # optional
#  user_data = file ("userdata.sh") # you can put here "sudo yum install httpd -y " or 
#                                   # you can create userdata.sh file #!/bin/bash > sudo yum install httpd -y 
#  
#  tags = {
#
#    "name" = "Yusuf terraform "
#    "name" = "Yusuf terraform "
#    "name" = "Yusuf terraform "
#    }
#}
#
## we have to get from resources information from key.tf file 
## combine two resources in the one file it is interpollation.
### key_name = resource name which is aws_key_pair and key name which is deployer2 and key_name again 