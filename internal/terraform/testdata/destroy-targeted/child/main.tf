variable "in" {
}

resource "aws_instance" "b" {
  foo = var.in
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

output "out" {
  value = var.in
}
