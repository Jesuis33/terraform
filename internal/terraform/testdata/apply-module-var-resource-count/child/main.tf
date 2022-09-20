variable "num" {
}

resource "aws_instance" "foo" {
  count = "${var.num}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
