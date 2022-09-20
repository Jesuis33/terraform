resource "aws_instance" "foo" {
  foo = "bar"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

output "value" {
  value = "${aws_instance.foo.id}"
}
