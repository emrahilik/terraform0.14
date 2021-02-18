resource "aws_iam_role" "terraform_admin_yusuf" {# you have to put the name of the role here 
name = "test_role_terraform_admin_yusuf" # name is going to be your role name       # <<<<  check after EOF (END OF FILE) Should be nor any space here#
assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
{
  "Action": "sts:AssumeRole",
  "Principal": {
  "Service": "ec2.amazonaws.com"
},
  "Effect": "Allow",
  "Sid": ""
    }
  ]
}
EOF
}