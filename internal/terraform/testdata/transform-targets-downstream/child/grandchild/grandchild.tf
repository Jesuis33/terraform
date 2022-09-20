resource "aws_instance" "foo" {
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

output "id" {
  value = "${aws_instance.foo.id}"
}
