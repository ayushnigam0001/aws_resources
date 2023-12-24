# module "server_02" {
#   source            = "git::https://github.com/ayushnigam0001/terraformmodules.git//aws_ec2"
#   server_name       = "Server02"
#   availability_zone = "ap-south-1a"
#   root_volume_size  = 12
#   ebs_block_devices = [
#     {
#       "device_name" = "/dev/sdb"
#       "volume_size" = 3
#     },
#     {
#       "device_name" = "/dev/sdc"
#       "volume_size" = 4
#     }
#   ]
#   ami_id              = "ami-04708942c263d8190"
#   instance_type       = "t2.micro"
#   subnet_id           = "subnet-00848b73f86a37141"
#   key                 = "pem-key"
#   security_group_list = ["sg-063bfb276ea028c07"]
# }
#hello