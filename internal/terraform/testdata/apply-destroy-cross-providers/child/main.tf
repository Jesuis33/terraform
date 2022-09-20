variable "value" {}

resource "aws_vpc" "bar" {
  value = "${var.value}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
