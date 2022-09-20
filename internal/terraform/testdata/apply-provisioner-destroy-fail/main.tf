resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    command    = "one"
    when       = "destroy"
    on_failure = "continue"
  }

  provisioner "shell" {
    command = "two"
    when    = "destroy"
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
