module "child" {
  input  = "42"
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "2"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
