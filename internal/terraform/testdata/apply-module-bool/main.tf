module "child" {
  source = "./child"
  leader = true
}

resource "aws_instance" "bar" {
  foo = "${module.child.leader}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
