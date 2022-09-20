resource "aws_instance" "foo" {
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

output "instance_id" {
  # Even though we're targeting just the resource above, this should still
  # be populated because outputs are implicitly targeted when their
  # dependencies are
  value = "${aws_instance.foo.id}"
}
