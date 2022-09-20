resource "aws_instance" "web" {
  provisioner "shell" {}
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
