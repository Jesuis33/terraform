resource "aws_instance" "bar" {
  require_new = "xyz"
  provisioner "shell" {}
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
