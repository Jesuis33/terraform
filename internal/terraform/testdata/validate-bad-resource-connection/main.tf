resource "aws_instance" "foo" {
  connection {
    user = "test"
  }
  provisioner "shell" {
    test_string = "test"
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
