
provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "webserver" {

  count = "${var.instance_count}"
  ami = "${var.my-ami}"
  instance_type = "${var.my-instance-type}"
    
  tags = {
      Name = "EC2-Module"
  }
}
