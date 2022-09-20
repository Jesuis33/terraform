resource "aws_instance" "bar" {
  foo = "baz"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
