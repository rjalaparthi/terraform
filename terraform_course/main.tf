
resource "aws_instance" "server" {

    ami = var.os
    instance_type = var.size

    tags = {
      Name =var.name
    }
}

#s3 bucket
resource "aws_s3_bucket" "bucket" {
  
  bucket = var.bucketname
}


# IAM user

resource "aws_iam_user" "myuser" {
  
  name = "${var.username}-user"
}


#output block

output "IPaddress" {
  value = aws_instance.server.public_ip
}

output "DNS" {
  value =aws_instance.server.public_dns
}

/*resource "github_repository" "example" {
  name        = "My_github_repo"
  description = "This repo is created using Terraform"
   
visibility = "public"
}*/