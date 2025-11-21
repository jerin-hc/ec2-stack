variable "regions" {
  type = set(string)
}

variable "identity_token" {
  type      = string
  sensitive = true
}

variable "role_arn" {
  type = string
}

variable "default_tags" {
  type    = map(string)
  default = {}
}
