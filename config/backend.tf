terraform {
  backend "s3" {
    bucket = "my-tf-backend-bucket"
    key    = "terraform.tfstate"
    region = "eu-west-1"
    dynamodb_table = "TF-State-Lock-Dynamo-DB"
  }
}
