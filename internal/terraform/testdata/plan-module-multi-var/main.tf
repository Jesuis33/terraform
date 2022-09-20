resource "aws_instance" "parent" {
  count = 2
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

module "child" {
  source = "./child"
  things = "${join(",", aws_instance.parent.*.id)}"
}

