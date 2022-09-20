resource "aws_instance" "bar" {
  provisioner "shell" {
    foo = "bar"
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
