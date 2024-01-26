# EC2 Resource

resource "aws_instance" "server" {

    ami = var.ami_id
    instance_type = var.instance_type
    provider = aws.east

   tags = {
     Name = var.name
   }
  
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "server1" {
    ami = var.ami_id
    instance_type = var.instance_type
    provider = aws.west

    tags = {
      Name =var.name1
    }
}

