output "public_ip" {
  value = aws_instance.example[0].public_ip
}
