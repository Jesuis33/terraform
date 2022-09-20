resource "aws_instance" "foo" {
  required_field = "set"

  lifecycle {
    ignore_changes = all
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
