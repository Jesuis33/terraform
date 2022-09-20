provider "aws" {}

resource "aws_instance" "test" {
  foo   = "${format("foo%d", count.index)}"
  count = 2
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
