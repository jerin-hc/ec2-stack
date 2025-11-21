  component "ec2_instances" {
    for_each = deployment.development.inputs.regions

    source = "./ec2"

    inputs = {
      region = each.value
      instance_count = 2
      instance_type  = "t3.micro"
      ami_id         = "ami-0f58b397bc5c1f2e8"  # Example: Amazon Linux 2 (Mumbai)
      subnet_id      = "subnet-02d59fd01e07fbd28"
    }
  }
    
