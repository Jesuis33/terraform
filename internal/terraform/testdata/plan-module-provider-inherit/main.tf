module "child" {
  source = "./child"
}

provider "aws" {
  from = "root"
}

resource "aws_instance" "foo" {
  from = "root"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
