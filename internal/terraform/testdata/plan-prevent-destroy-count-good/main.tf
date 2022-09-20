resource "aws_instance" "foo" {
  count   = "1"
  current = "${count.index}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
