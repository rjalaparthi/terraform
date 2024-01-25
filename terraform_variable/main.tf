# EC2 Resource

resource "aws_instance" "server" {

    ami = "ami-0c7217cdde317cfec"
    instance_type = "t2.micro"
    provider = aws.east

   tags = {
     name ="example"
   }
  
}

resource "aws_instance" "server1" {
    ami = "ami-0e534e4c6bae7faf7"
    instance_type = "t2.micro"
    provider = aws.west

    tags = {
      name ="example1"
    }
}