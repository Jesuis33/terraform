resource "aws_instance" "foo" {
  count = "${list}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
