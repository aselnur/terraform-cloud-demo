resource "aws_elb" "bar" {
  name = "foobar-terraform-elbs"
  availability_zones = data.terraform_remote_state.vpc.outputs.azs
  security_groups = [aws_security_group.asg-sec-group.id]


listener {
instance_port = 80
instance_protocol = "http"
lb_port = 80
lb_protocol = "http"
}


health_check {
healthy_threshold = 2
unhealthy_threshold = 2
timeout = 3
target = "TCP:80"
interval = 30
}

cross_zone_load_balancing = true
idle_timeout = 400
connection_draining = true
connection_draining_timeout = 400



}











