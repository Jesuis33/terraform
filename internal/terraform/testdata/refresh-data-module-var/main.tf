resource "aws_instance" "A" {
  foo = "bar"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

module "child" {
  source = "./child"
  key    = "${aws_instance.A.id}"
}
