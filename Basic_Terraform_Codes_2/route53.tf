resource "aws_route53_record" "test" {
  zone_id = "Z0068527126SN2I1BE8UB"
  name    = "test.yusufilik.com"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.web.public_ip] # public ip comes from Route 53
  # aws_instance.web2.public_ip, if you need you can add more 
  # aws_instance.web3.public_ip,
}
