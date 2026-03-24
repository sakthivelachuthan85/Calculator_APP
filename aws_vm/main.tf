# create aws virtual machine
provider "aws" {
  region = "us-east-1"  # Choose your AWS region
}
 
resource "aws_instance" "demo-server" {
  ami           = "ami-0ec10929233384c7f"  # Replace with valid AMI in your region
  instance_type = "t2.micro"               # Free tier
  tags = {
    Name = "Sakthivel_VM01"
  }
}

