# this line pulls ubuntu ami
data "aws_ami" "ubuntu" {
   most_recent = true
   owners = ["099720109477"]

   filter {
       name = "name"
       values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
   }
   
   filter {
       name = "virtualization-type"
       values = ["hvm"]
   }

   owners = ["099720109477"]  # Canonical

} 
# between line 1 and 16 pull iam id from aws and output show me iam id 



output "UBUNTU_ID" {
    value = data.aws_ami.ubuntu.id     #output show me iam id 
}

# this line pull CentOS AMI 
data "aws_ami" "centos" {
   most_recent = true

   filter {
       name = "name"
       values = ["CentOS Linux 7 x86_64 HVM EBS *"]
   }
   
   filter {
       name = "virtualization-type"
       values = ["hvm"]
   }

   owners = ["679593333241"]  # Canonical

} 
  



output "CENTOS_ID" {
    value = data.aws_ami.centos.id     #output show me iam id 
}

data "aws_availability_zones" "all" {}

output "AZ" {
   value = data.aws_availability_zones.all.names   #output show availablity zones  
}
  #"us-east-1a",
  #"us-east-1b",
  #"us-east-1c",
  #"us-east-1d",
  #"us-east-1e",
  #"us-east-1f",   also we can spicify all AZ's instead of value <data.aws_availability_zones.all.names> 

resource "aws_instance" "yusufemrah" {
    ami = data.aws_ami.centos.id 
    instance_type = "t2.micro"
    key_name = aws_key_pair.deployer3.key_name
    vpc_security_group_ids      = [aws_security_group.yusuf.id]
    
    
    provisioner "remote-exec" {
    #script = file("${path.module}/user.sh")  # you have to put path sh file location.
   # you use your comment with script or list as a inline 
   inline = [
    "sudo yum install httpd -y",
   "sudo systemctl start httpd",
   ]

    connection {
    type     = "ssh"
    user     = "centos"
    password = "file(~/.ssh/id_rsa)"
    host     = aws_instance.yusufemrah.public_ip  
    }
    }

    provisioner "remote-exec" {
      source = "user.sh"
      destination = "/tmp/user.sh"

    connection {
    type     = "ssh"
    user     = "centos"
    password = "file(~/.ssh/id_rsa)"
    host     = aws_instance.yusufemrah.public_ip  
    }
  
  }
}

