resource "aws_instance" "foo" {
  num = "2"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

output "foo_num" {
  value = "${aws_instance.foo.num}"
}
