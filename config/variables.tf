variable custom_vpc_cidr {
  type        = string
  description = "description"
}

variable custom_common_resource_name {
  type        = string
  default     = "Alaa_Test"
  description = "description"
}

variable custom_region {
  type        = string
  description = "description"
}

variable custom_machine_details {
  type        = object({
    name      = string
    type      = string
    ami       = string
    public_ip = bool
  })
  description = "description"
}

variable custom_subnets_details {
  type        = list(object({
    name  = string
    cidr  = string
    type  = string
    az    = string
  }))
  description = "description"
}
