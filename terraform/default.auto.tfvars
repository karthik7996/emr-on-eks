aws_region      = "us-east-1"
azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
use_default_vpc = true
name            = "cz-eks-emr-demo"
tags = {
  env = "dev-cz"
}
kubernetes_version = "1.21"
managed_node_groups = [
  {
    name          = "spark"
    desired_size  = 3
    min_size      = 3
    max_size      = 9
    instance_type = "m5.large"
  }
]