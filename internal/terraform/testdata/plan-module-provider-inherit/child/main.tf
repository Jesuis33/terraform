resource "aws_instance" "foo" {
  from = "child"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
