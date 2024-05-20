vpc_cidr          = "10.0.0.0/16"
region            = "us-east-1"
ses_email_receiver = "alaa.gomaa178@gmail.com"
machine_details = {
    type      = "t2.micro",
    public_ip = true
}

subnets_details = [
    {
        name = "public_subnet_I",
        cidr = "10.0.1.0/24",
        type = "public",
        az   = "us-east-1a"
    },
    {
        name = "public_subnet_II",
        cidr = "10.0.2.0/24",
        type = "public",
        az   = "us-east-1b"
    },
    {
        name = "private_subnet_I",
        cidr = "10.0.3.0/24",
        type = "private",
        az   = "us-east-1a"
    },
    {
        name = "private_subnet_II",
        cidr = "10.0.4.0/24",
        type = "private",
        az   = "us-east-1b"
    }
]
