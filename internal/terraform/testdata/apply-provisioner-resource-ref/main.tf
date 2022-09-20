resource "aws_instance" "bar" {
  num = "2"

  provisioner "shell" {
    command = "${aws_instance.bar.num}"
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
