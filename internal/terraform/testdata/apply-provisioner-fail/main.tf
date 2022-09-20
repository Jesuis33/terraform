resource "aws_instance" "foo" {
  num = "2"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "bar" {
  provisioner "shell" {}
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
