provider "aws"{
    region = "us-east-1"
}

module "compute" {
    source = "../modules/compute"

    instance_count = 2
    my-ami = "ami-08bc77a2c7eb2b1da"
    my-instance-type = "t2.micro"

}

variable "name_list" {
    default = ["1-Sampath-Default"]
    
}

resource "aws_iam_user" "example" {
  count = length(var.name_list)
  name = var.name_list[count.index]
}


