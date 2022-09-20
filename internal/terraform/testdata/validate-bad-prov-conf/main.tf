provider "aws" {
  foo = "bar"
}

resource "aws_instance" "test" {
  provisioner "shell" {
    test_string = "foo"
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
