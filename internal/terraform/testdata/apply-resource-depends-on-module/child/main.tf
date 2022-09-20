resource "aws_instance" "child" {
  ami = "child"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
