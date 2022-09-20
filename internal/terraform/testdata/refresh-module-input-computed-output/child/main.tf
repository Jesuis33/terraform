variable "input" {
  type = string
}

resource "aws_instance" "foo" {
  foo = var.input
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

output "foo" {
  value = aws_instance.foo.foo
}
