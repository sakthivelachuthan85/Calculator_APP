terraform {
  backend "s3" {
    bucket = "terraformstatefile-aws-s3-bucket"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    #the dynamodb_table is used for state locking to prevent concurrent modifications
    dynamodb_table = "terraform-state-lock-dynamo" 
    
  }
}

