resource "aws_instance" "a" {
  id = "a"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

output "a_output" {
  value = "${aws_instance.a.id}"
}
