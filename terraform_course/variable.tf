variable "os" {

  type = string
  default = "ami-0e534e4c6bae7faf7"
  description = "This is my AMI ID"
  
  #sensitive = true
}

variable "size" {
  default = "t2.micro"
}

variable "name" {
  default = "TerraformEC2"

}

variable "bucketname" {
  
}


variable "username" {
  
}
