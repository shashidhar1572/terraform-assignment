# Configure the AWS Provider
provider "aws" {
  region                  = "${var.aws_region}"
  shared_credentials_file = "/Users/sha/.aws/credentials"
  profile                 = "default"
}
