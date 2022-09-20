resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    on_failure = "continue"
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
