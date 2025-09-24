# resource "instance_public_ip" "public_ip" {
#   description = "Public IP of the NGINX server"
#   value       = aws_instance.nginx_server.public_ip
# }


# resource "instance_url" "name" {
#     description = "URL of the NGINX server"
#     value       = "http://${aws_instance.nginx_server.public_ip}"
  
# }

# both are correct

output "nginx_public_ip" {
  value = aws_instance.nginx_server.public_ip
}

output "nginx_url" {
  value = "http://${aws_instance.nginx_server.public_ip}"
}