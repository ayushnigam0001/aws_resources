# module "sg_server01" {
#   source = "git::https://github.com/ayushnigam0001/terraform-modules.git//aws_sg"
#   sg_server_name = "server01"
#   vpc_id = "vpc-075681ca5ea808c91"
#   sg_details = [
#     {
#       description = "SSH"
#       from_port = 22
#       to_port = 22
#       protocol = "tcp"
#       cidr_block = ["0.0.0.0/0"]
#     },
#     {
#       description = "HTTP"
#       from_port = 80
#       to_port = 80
#       protocol = "tcp"
#       cidr_block = ["0.0.0.0/0"]
#     }
#   ]
# }