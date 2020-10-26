# S3 backend configuration as per: https://www.terraform.io/docs/backends/types/s3.html
# Please note that this section does not support variables
terraform {
  backend "s3" {
    bucket = "collaborative-terraform"
    key    = "terraform.tfstate"
    region = "eu-central-1"

    # Table used for tfstate region lock
    dynamodb_table = "terraform-lock-region"

  }
}
