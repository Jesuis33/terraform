resource "aws_instance" "foo" {
  count   = 2
  compute = "ip.#"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "bar" {
  count = 1
  foo   = "${aws_instance.foo.*.ip[count.index]}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
