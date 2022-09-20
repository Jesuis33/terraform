provider "aws" {
  value = "${test_instance.bar.value}"
}

resource "aws_instance" "foo" {
  bar = "value"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "test_instance" "bar" {
  value = "yes"
}
