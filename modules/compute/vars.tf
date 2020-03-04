variable "instance_count" {
    default = 1
    description = "Instance Count"
}

variable "my-ami" {
    default =  "ami-08bc77a2c7eb2b1da"
    description = "My AMI"
}

variable "my-instance-type" {
    default =  "t2-micro"
    description = "My Instance Type"
}
