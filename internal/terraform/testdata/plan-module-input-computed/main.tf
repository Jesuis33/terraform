module "child" {
  input  = "${aws_instance.bar.foo}"
  source = "./child"
}

resource "aws_instance" "bar" {
  compute = "foo"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
