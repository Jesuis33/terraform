variable "secret" {
  type      = string
  default   = " password123"
  sensitive = true
}

resource "aws_instance" "foo" {
  provisioner "test" {
    test_string = var.secret
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
