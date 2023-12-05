data "aws_instance" "demo" {
  instance_id = "i-088a8518921862869"

  }

data "aws_ami" "am1" {
    most_recent      = true
    owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*-x86_64-ebs"]
    
    
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
