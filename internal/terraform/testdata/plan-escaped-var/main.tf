resource "aws_instance" "foo" {
  foo = "bar-$${baz}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
