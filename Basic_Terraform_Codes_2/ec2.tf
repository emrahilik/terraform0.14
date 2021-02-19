resource "aws_instance" "web" {
  ami           = "ami-047a51fa27710816e"
  instance_type = "t2.micro"
  key_name = aws_key_pair.deployer2.key_name  
  count = 4
}

# we have to get from resources information from key.tf file 
# combine two 
## key_name = resource name which is aws_key_pair and key name which is deployer2 and key_name again 