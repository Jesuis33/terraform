module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "${module.child.good}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
