provider "aws" {
  alias = "mod"
}

resource "aws_instance" "bar" {
  provider = "aws.mod"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
