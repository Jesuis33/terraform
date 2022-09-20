resource "aws_instance" "a" {
  require_new = "new"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

output "ids" {
  value = [aws_instance.a.id]
}
