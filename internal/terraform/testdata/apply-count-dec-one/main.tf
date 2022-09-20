resource "aws_instance" "foo" {
  foo = "foo"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
