module "child" {
  source = "./child"
}

resource "aws_instance" "b" {
  id   = "b"
  blah = "${module.child.a_output}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
