resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

output "num" {
  value = "${aws_instance.foo.foo}"
}
