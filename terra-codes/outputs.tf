output "vmpubip" {
  value = aws_instance.web.public_ip
}
output "vmpubdns" {
  value = aws_instance.web.public_dns
}
output "vmpvtip" {
  value = aws_instance.web.private_ip
}
