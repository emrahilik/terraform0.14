resource "aws_iam_policy" "policy" { #Create policy on AWS page, and attach json file directly to policy. 
#It is better to create one on AWS and attach to policy = <<EOF EOF  line. Keep in mind, 
#there should not be any space between EOF And EOF ##### important!!!!!!!!
  path = "/"
  description = "admin policy"
  policy = <<EOF
{
    "Version": "2012-10-17",   
    "Statement": [         
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF
 }
