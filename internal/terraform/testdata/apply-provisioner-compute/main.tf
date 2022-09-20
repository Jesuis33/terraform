variable "value" {}

resource "aws_instance" "foo" {
  num           = "2"
  compute       = "value"
  compute_value = "${var.value}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "bar" {
  provisioner "shell" {
    command = "${aws_instance.foo.value}"
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
