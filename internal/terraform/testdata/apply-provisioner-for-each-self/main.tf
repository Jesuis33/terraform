resource "aws_instance" "foo" {
  for_each = toset(["a", "b", "c"])
  foo      = "number ${each.value}"

  provisioner "shell" {
    command = "${self.foo}"
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
