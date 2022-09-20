resource "aws_instance" "foo" {
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "bar" {
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
