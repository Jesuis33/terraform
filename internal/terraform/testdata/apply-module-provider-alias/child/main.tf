provider "aws" {
  alias = "eu"
}

resource "aws_instance" "foo" {
  provider = "aws.eu"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
