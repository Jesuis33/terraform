variable "list" {
  type = list(string)
}

resource "aws_instance" "bar" {
  count = var.list[0]
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
