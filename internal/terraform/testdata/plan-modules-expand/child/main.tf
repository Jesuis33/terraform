variable "foo" {}
variable "bar" {}

resource "aws_instance" "foo" {
  count = 2
  num   = var.foo
  bar   = "baz" #var.bar
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

output "out" {
  value = aws_instance.foo[0].id
}
