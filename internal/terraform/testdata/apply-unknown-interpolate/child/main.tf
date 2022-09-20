variable "value" {}

resource "aws_instance" "bar" {
  foo = "${var.value}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
