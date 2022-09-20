resource "aws_instance" "foo" {
  count = 3
  foo   = "number ${count.index}"

  provisioner "shell" {
    command = aws_instance.foo[0].foo
    order   = count.index
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
