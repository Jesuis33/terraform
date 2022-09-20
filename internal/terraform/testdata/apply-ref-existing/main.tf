resource "aws_instance" "foo" {
  foo = "bar"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

module "child" {
  source = "./child"

  var = "${aws_instance.foo.foo}"
}
