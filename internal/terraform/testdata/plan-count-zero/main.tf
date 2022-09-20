resource "aws_instance" "foo" {
  count = 0
  foo   = "foo"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.*.foo}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
