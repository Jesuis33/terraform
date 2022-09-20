resource "aws_instance" "foo" {
  count = 3
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "bar" {
  foo = length(aws_instance.foo)
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
