variable "param" {
  type = list(string)
}

resource "aws_instance" "test" {
  count = "2"
  thing = "doesnt"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

output "out_from_splat" {
  value = aws_instance.test.*.thing
}
