variable "a_id" {}

resource "aws_instance" "b" {
  foo = "echo ${var.a_id}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
