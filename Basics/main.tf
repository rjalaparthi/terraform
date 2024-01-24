/*provider "aws" {
  region = "us-east-1"
  alias = "east"
}

provider "aws" {
  
  region = "us-west-1"
  alias = "west"
}

resource "aws_instance" "example" {
  ami = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  provider = "aws.east"
}

resource "aws_instance" "example1" {
  ami = "ami-0e534e4c6bae7faf7"
  instance_type = "t2.micro"
  provider = "aws.west"

}*/

locals {
  name ="John Cena"
  fruits =["apple" , "banana" , "mangoes"]
  message ="Hello ${upper(local.name)}! I know you like ${join("," , local.fruits)}"
}

output "name" {
 value = local.message

}