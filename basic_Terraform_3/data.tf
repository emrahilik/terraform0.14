# this line pulls ubuntu ami
data "aws_ami" "ubuntu" {
   most_recent = true

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