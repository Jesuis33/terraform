resource "aws_instance" "web" {
  lifecycle {
    ignore_changes = all
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
