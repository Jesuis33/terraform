resource "aws_instance" "foo" {
  lifecycle {
    prevent_destroy = true
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
