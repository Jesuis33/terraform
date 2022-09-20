resource "aws_instance" "foo" {
  count = 13
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
