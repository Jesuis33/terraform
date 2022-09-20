variable "mod_count" {}

resource "aws_instance" "foo" {
  count = "${var.mod_count}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
