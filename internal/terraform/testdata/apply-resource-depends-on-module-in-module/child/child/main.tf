resource "aws_instance" "c" {
  ami = "grandchild"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
