output "ip" {
    value = aws_instance.web.public_ip
}

output "ARN" {
    value = aws_instance.web.arn
}

output "ID" {
    value = aws_instance.web.id
}

output "volume_id" {
    value = aws_instance.web.id
}

output "KEY" {
    value = aws_instance.web.key_name
}