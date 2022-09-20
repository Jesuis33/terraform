variable "input" {}

resource "aws_instance" "b" {
  id = "${var.input}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
