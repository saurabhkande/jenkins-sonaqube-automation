variable "ami-id" {
   type = list
   default = ["ami-0ba259e664698cbfc","ami-03bb6d83c60fc5f7c"]
}

variable "instance-type" {
   default = "t2.medium"
}

variable "key-name" {
  type = list
  default = ["sk4"]
}

variable "subnet-id" {
  type = list
  default =  ["subnet-0b1d7bca8b0ce7182"]
}

variable "vpc-id" {
    type = string
    default = "vpc-01806dab4e92f00ff"
  
}

variable "sg-id" {

    default = "sg-052d4cd2b125c82a4"
  
}