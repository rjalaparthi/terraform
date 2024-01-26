# Define an input for EC2

variable "ami_id" {
  description = "EC2 AMI ID"
  type = string
  default = "ami-0c7217cdde317cfec"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "name" {
  description = "value of name tag for EC2 Instance in East"
  type = string
  default = "ExampleAppEastServerInstance"
}

variable "name1" {
  description = "value of name tag for EC2 Instance in West"
  type = string
  default = "ExampleAppWestServerInstance"
}

#Define an output variable to expose Public IP of EC2 Instances
output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value = [aws_instance.server1.public_ip, aws_instance.server.public_ip , aws_instance.web.public_ip]
  
}




