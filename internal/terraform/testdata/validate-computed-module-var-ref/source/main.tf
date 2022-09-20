resource "aws_instance" "source" {
  attr = "foo"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

output "sourceout" {
  value = "${aws_instance.source.attr}"
}
