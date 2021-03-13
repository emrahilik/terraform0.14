# terraform0.14

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