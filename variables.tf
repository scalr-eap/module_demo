variable region {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable cidr {
  description = "CIDR block in format n.n.n.n/n"
}

variable prefix {
}

variable public {
  description = "Indicates if public IP's should be allocated to instances on launched in the VPC"
  type        = bool
}

variable max_subnets {
  description = "Maximum number of subnets to create. Must be <= number of AZs (-1 = all AZs)"
}