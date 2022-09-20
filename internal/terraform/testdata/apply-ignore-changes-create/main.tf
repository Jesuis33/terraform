resource "aws_instance" "foo" {
  required_field = "set"

  lifecycle {
    ignore_changes = ["required_field"]
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
