resource "aws_instance" "foo" {
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

data "aws_data_source" "foo" {
  foo = "${aws_instance.foo.computed}"
}
