resource "aws_instance" "foo" {
  id = "baz"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
