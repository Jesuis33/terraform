variable "var" {}

resource "aws_instance" "foo" {
  value = "${var.var}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
