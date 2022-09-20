resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

module "child" {
  source = "./child"
  value  = "${aws_instance.foo.foo}"
}
