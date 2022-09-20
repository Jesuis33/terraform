resource "aws_instance" "foo" {
  value = "2"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.value}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
