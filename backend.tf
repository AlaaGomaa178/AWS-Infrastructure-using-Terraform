terraform {
  backend "s3" {
    bucket = "tf-aws-day2-bucket"
    key    = "terraform.tfstate"
    region = "eu-west-1"
    dynamodb_table = "Alaa-TF-State-Lock-Dynamo-DB"
  }
}
