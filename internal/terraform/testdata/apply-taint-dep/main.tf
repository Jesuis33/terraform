resource "aws_instance" "foo" {
  num = "2"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "bar" {
  num = "2"
  foo = "${aws_instance.foo.id}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
