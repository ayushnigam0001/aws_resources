module "server_03" {
  source            = "git::https://github.com/gareeb-engineer/terraform-modules.git//aws_ec2"
  server_name       = "Server03"
  availability_zone = "ap-south-1a"
  root_volume_size  = 12
  ebs_block_devices = [
    {
      "device_name" = "/dev/sdb"
      "volume_size" = 3
    },
    {
      "device_name" = "/dev/sdc"
      "volume_size" = 4
    }
  ]
  ami_id              = var.redhat_ami
  instance_type       = "t2.micro"
  subnet_id           = "subnet-05282e8edf91c56a6"
  key                 = var.public_auth_key
  security_group_list = ["sg-01c565b76588d3328"]
}