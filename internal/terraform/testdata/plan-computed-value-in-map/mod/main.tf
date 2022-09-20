variable "services" {
  type = list(map(string))
}

resource "aws_instance" "inner2" {
  looked_up = var.services[0]["elb"]
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

