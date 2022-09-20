variable "id" {}

resource "aws_instance" "mod" {
  value = "${var.id}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
