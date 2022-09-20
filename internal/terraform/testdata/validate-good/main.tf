resource "aws_instance" "foo" {
  num = "2"
  foo = "bar"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
