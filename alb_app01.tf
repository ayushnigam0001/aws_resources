module "alb_app01" {
    source = "git::https://github.com/ayushnigam0001/terraform-modules.git//aws_alb"
    app_load_balancer_name        = "MyAppLb"
    is_internal                   = false
    load_balancer_type            = "application"
    load_balancer_security_groups = ["sg-006ec06cd2aa60a30"]
    subnets                       = ["subnet-0a8aa67f5cfe88e45", "subnet-096474556355f1f05"]

    target_group_name = "linux-tg"

    target_group_port     = 80
    target_group_protocol = "HTTP"
    vpc_id                = "vpc-075681ca5ea808c91"
    health_check_path     = "/"

    load_balancer_listining_port     = 80
    load_balancer_listining_protocol = "HTTP"

    list_of_forwarding_path_pattern = ["/"]

    forwarding_to = [{
    ip   = "10.0.2.171"
    port = 80
    }]
}
