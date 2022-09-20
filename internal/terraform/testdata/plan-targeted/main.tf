resource "aws_instance" "foo" {
  num = "2"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "bar" {
  foo = aws_instance.foo.num
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

module "mod" {
  source = "./mod"
  count  = 1
}
