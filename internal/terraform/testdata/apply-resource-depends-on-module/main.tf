module "child" {
  source = "./child"
}

resource "aws_instance" "a" {
  ami = "parent"

  depends_on = ["module.child"]
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
