resource "aws_launch_template" "enes" {
  name_prefix   = "enes"
  image_id      = data.aws_ami.image.id
  instance_type = "t2.micro"
  key_name = aws_key_pair.asg-key-pair.key_name   # this values comes from key.tf file <
                                                  # "aws_key_pair" "asg-key-pair" 
                                                  # key_name >
  user_data = filebase64("${path.module}/userdata.sh") 
}







# `This is for launch configuration`
#resource "aws_launch_configuration" "as_conf" {
#  name          = "web_config"
#  image_id      = data.aws_ami.image.id
#  instance_type = "t2.micro"
#  user_data = file("userdata.sh")  
#  spot_price = "0.5"
#}