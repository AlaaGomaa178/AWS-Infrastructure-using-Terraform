custom_vpc_cidr = "10.0.0.0/16"
custom_common_resource_name = "Alaa_Test"
custom_region = "eu-west-1"
custom_machine_details = {
  name = "example"
  type = "t2.micro"
  ami = "ami-123456"
  public_ip = true
}
custom_subnets_details = [
  {
    name = "subnet1"
    cidr = "10.0.1.0/24"
    type = "public"
    az = "eu-west-1a"
  },
  {
    name = "subnet2"
    cidr = "10.0.2.0/24"
    type = "private"
    az = "eu-west-1b"
  }
]
