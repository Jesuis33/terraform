variable "foo" {}

variable "bar" {}

resource "aws_instance" "foo" {
  ami      = "${var.foo}"
  instance = "${var.bar}"

  lifecycle {
    ignore_changes = all
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
