variable "num" {
  default = 15
}

resource "aws_instance" "bar" {
  count = "${var.num}"
  foo   = "index-${count.index}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

output "should-be-11" {
  value = "${element(aws_instance.bar.*.foo, 11)}"
}
