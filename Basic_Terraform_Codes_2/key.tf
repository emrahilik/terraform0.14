resource "aws_key_pair" "deployer2" {    # for interpollation with keys and ec2 instance
  key_name   = "deployer2"
  public_key = file ("~/.ssh/id_rsa.pub") 
}


# key_name = resource name which is aws_key_pair and key name which is deployer2 and key_name again 