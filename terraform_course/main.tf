
resource "aws_instance" "server" {

    ami = "ami-0c7217cdde317cfec"
    instance_type = "t2.micro"
    provider = aws.west #alias

    tags = {
      Name ="MyFirstServer"
    }
}



resource "github_repository" "example" {
  name        = "My_github_repo"
  description = "This repo is created using Terraform"
   
visibility = "public"
}