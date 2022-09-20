variable "foo" {}

resource "aws_instance" "foo" {
  ami = var.foo

  lifecycle {
    ignore_changes = [ami]
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
