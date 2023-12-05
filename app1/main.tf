module "server1" {
    source = "../modules/ec2"
    ami = "ami-05c13eab67c5d8861"
    instance_type = "t3.small"
    region = "us-east-1"
    Name = "Dev-from module"
  
}

output "public-ip" {
    value = module.server1.public-ip
}