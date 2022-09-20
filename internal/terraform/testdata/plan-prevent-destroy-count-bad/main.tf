resource "aws_instance" "foo" {
  count   = "1"
  current = "${count.index}"

  lifecycle {
    prevent_destroy = true
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
