#Learning HCL
/*
this 
is
multi line
Comment */

#Block

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "nameOfResource" {
  ami = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  count = 3
  security_groups = ["sg-2132","sg-12345"] # List
}

variable "example_map" {
  type = map
  default = {key1 ="value",key2 =3, key3 ="value3"} # Maps
}

locals {
  my_map ={"name" ="Riyan" , age =3 , "is_admin" = true} # Maps
  
}
#variable declaration

variable "environment" {
  type = string
}

resource "aws_instance" "server" {
  #conditions
  instance_type = var.environment=="development" ? "t2.micro" : "t2.small"

}


#function

locals {
  name ="John Cena"
  fruits =["apple" , "banana" , "mangoes"]
  message ="Hello ${upper(local.name)}! I know you like ${join("-" , local.fruits)}"
}



#attributes
# key = value


#Datatypes

#Conditions

#functions

#resourceDependency