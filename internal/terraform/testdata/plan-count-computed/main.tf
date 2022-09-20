resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "bar" {
  count = "${aws_instance.foo.foo}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
