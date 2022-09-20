provider "aws" {
  alias = "bar"
}

resource "aws_instance" "thing" {
  provider = aws.bar
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
