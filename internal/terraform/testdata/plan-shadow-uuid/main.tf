resource "aws_instance" "test" {
  value = "${uuid()}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
