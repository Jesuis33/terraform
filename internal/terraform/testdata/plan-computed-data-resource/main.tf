resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

data "aws_vpc" "bar" {
  foo = "${aws_instance.foo.foo}"
}
