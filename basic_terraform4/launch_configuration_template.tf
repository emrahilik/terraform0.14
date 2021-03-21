resource "aws_launch_template" "enes" {  
  name_prefix          = "enes"
  image_id      = data.aws_ami.image.id
  instance_type = "t2.micro"
}







# `This is for launch configuration`
#resource "aws_launch_configuration" "as_conf" {
#  name          = "web_config"
#  image_id      = data.aws_ami.image.id
#  instance_type = "t2.micro"
#  user_data = file("userdata.sh")  
#  spot_price = "0.5"
#}