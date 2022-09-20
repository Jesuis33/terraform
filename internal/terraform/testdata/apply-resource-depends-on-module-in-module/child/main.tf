module "grandchild" {
  source = "./child"
}

resource "aws_instance" "b" {
  ami        = "child"
  depends_on = ["module.grandchild"]
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
