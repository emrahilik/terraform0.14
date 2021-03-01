resource "aws_key_pair" "deployer3" { # for interpollation with keys and ec2 instance
  key_name   = "deployer3"
  public_key = file("~/.ssh/id_rsa.pub")
}


# key_name = resource name which is aws_key_pair and key name which is deployer2 and key_name again 