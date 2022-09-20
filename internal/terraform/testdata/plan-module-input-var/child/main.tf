variable "input" {}

resource "aws_instance" "foo" {
  foo = "${var.input}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
