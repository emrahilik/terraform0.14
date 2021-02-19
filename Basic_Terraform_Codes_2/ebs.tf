resource "aws_ebs_volume" "yusufebs" {
  availability_zone = "us-east-1a"
  size              = 100
}


# for attache and interpollation to ec2.tf file we have to use aws_volume_attachment
# we have to create different resource 
# volumes should be in same availablety zone
# web comes from ec2.tf 
# resource + name of the ebs 

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.yusufebs.id
  instance_id = aws_instance.web.id
}