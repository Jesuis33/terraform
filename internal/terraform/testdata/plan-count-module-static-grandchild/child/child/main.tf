variable "value" {}

resource "aws_instance" "foo" {
  count = "${var.value}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
