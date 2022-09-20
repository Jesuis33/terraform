resource "aws_instance" "a" {
  foo = "bar"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

module "child" {
  source = "./child"
  in     = aws_instance.a.id
}

output "out" {
  value = aws_instance.a.id
}
