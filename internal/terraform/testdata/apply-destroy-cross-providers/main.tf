resource "aws_instance" "shared" {
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

module "child" {
  source = "./child"
  value  = "${aws_instance.shared.id}"
}
