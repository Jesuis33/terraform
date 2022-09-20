resource "aws_instance" "foo" {
  vars = "foo"

  lifecycle {
    ignore_changes = ["vars"]
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
