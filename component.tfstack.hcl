component "ec2_instances" {
  for_each = var.regions
  source   = "./ec2"

  providers = {
    aws = provider.aws.configurations[each.key]
  }

  inputs = {
    region         = each.value
    instance_count = 2
    instance_type  = "t3.micro"
    ami_id         = "ami-0f58b397bc5c1f2e8"
    subnet_id      = "subnet-02d59fd01e07fbd28"
  }
}
