module "mod" {
  source = "./mod"
}


resource "aws_instance" "c" {
  name = "${module.mod.output}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
