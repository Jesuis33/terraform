variable "destin" {}

resource "aws_instance" "dest" {
  attr = "${var.destin}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
