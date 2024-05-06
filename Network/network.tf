module "network" {
  source               = "./network"
  vpc_cidr             = var.custom_vpc_cidr
  common_resource_name = var.custom_common_resource_name
  region               = var.custom_region
  subnets_details      = var.custom_subnets_details
}
