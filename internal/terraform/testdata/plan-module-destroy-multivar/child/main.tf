variable "instance_count" {
  default = "1"
}

resource "aws_instance" "foo" {
  count = "${var.instance_count}"
  bar   = "bar"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
