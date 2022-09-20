resource "aws_instance" "web" {
  foo = "${aws_instance.web.foo}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
