output "scania_app_public_ip" {
  description = "IP for scania app"
  value       = aws_instance.scania_app.public_ip
}