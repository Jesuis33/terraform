resource "aws_instance" "foo" {
  provisioner "shell" {}
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

module "child" {
  source = "./child"
}
