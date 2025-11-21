variable "regions" {
  type        = set(string)
  description = "AWS regions where EC2 instances should be created"
}

variable "identity_token" {
  type        = string
  description = "OIDC identity token used to authenticate with AWS"
  sensitive   = true
}

variable "role_arn" {
  type        = string
  description = "AWS IAM Role ARN used for assume_role_with_web_identity"
}

variable "default_tags" {
  type        = map(string)
  description = "Default AWS resource tags"
  default     = {}
}
