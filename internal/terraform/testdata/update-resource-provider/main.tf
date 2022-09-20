provider "aws" {
  alias = "foo"
}

resource "aws_instance" "bar" {
  provider = "aws.foo"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
