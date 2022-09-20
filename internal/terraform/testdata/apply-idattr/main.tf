resource "aws_instance" "foo" {
  num = 42
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
