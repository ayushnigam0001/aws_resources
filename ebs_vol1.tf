module "ebs_vol01" {
  source = "git::https://github.com/gareeb-engineer/terraform-modules.git?ref=1.0.3"
  availability_zone = "ap-south-1a"
  volume_size = 12
  regular_tag = {
    "Name" = "EBS-VOl01"
  }
}