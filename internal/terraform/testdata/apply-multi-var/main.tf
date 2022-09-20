variable "num" {}

resource "aws_instance" "bar" {
  count = "${var.num}"
  foo   = "bar${count.index}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

output "output" {
  value = "${join(",", aws_instance.bar.*.foo)}"
}
