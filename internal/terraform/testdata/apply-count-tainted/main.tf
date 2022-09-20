resource "aws_instance" "foo" {
  count = 2
  foo   = "foo"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
