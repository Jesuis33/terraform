resource "aws_instance" "create" {
  bar = "abc"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "other" {
  var = "${aws_instance.create.id}"
  foo = "${aws_instance.create.bar}"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
