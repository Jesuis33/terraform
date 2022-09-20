variable "value" {}

resource "aws_instance" "bar" {
  value = "${var.value}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
