resource "aws_instance" "web" {
  require_new = "ami-new"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "lb" {
  instance = aws_instance.web.id
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
