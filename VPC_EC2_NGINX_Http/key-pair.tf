resource "aws_key_pair" "my_key" {
  key_name   = "my-key"
  public_key = file("~/.ssh/my-key.pub")  # path to your public key
}