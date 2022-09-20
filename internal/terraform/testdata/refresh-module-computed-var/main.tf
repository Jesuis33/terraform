module "child" {
  source = "./child"
  value  = "${join(" ", aws_instance.test.*.id)}"
}

resource "aws_instance" "test" {
  value = "yes"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
