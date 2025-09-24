
#For public ip show
output "aws_instance_public_ip" {
  description = "The public IP of the instance"
  value       = aws_instance.terraform_auto.public_ip

  
}
  
