# Empty
provider "aws" {}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

module "nested" {
  source = "./submodule"
}
