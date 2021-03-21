resource "aws_autoscaling_group" "enes" {
  availability_zones = data.aws_availability_zones.all.names
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.max_size
  mixed_instances_policy { # mixed instances policy allows us to create different type of instances.
    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.enes.id
      }

      override { # you can add different type of instances
        instance_type     = "c4.large"
        weighted_capacity = "10" # you can specify the number of instance type for ASG
      }

      override { # you can add different type of instances   
        instance_type     = "c3.large"
        weighted_capacity = "15" # you can specify the number of instance type for ASG
      }
    }
  }
}












# We can use this as well  
#resource "aws_autoscaling_group" "bar" {
#  name                 = "terraform-asg-yusuf"
#  launch_configuration = aws_launch_configuration.as_conf.name
#  availability_zones   = data.aws_availability_zones.all.names
#  min_size             = 1
#  max_size             = 2
#  lifecycle {
#    create_before_destroy = true # this is important. for example s3 bucket as well for app issues
#  }
#}


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