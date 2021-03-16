resource "aws_autoscaling_group" "bar" {
  name                 = "terraform-asg-yusuf"
  launch_configuration = aws_launch_configuration.as_conf.name
  availability_zones   = data.aws_availability_zones.all.names
  min_size             = 1
  max_size             = 2
  lifecycle {
    create_before_destroy = true # this is important. for example s3 bucket as well for app issues
  }
}


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