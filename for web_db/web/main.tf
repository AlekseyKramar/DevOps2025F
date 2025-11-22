provider "aws" {
  region = "us-east-1" # Replace with your desired AWS region
}
resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-0bdd88bd06d16ba03" # Replace with a valid AMI ID for your region
  instance_type = "t3.micro"
  key_name      = "web-db" # Replace with your existing EC2 key pair name
  tags = {
    Name = "web_server"
  }
}
