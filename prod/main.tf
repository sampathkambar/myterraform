provider "aws"{
    region = "us-east-1"
}

module "compute" {
    source = "../modules/compute"

    instance_count = 4
    my-ami = "ami-08bc77a2c7eb2b1da"
    my-instance-type = "t2.xlarge"
}