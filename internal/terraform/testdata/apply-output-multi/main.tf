resource "aws_instance" "foo" {
  num = "2"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "bar" {
  foo   = "bar"
  count = 3
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

output "foo_num" {
  value = "${join(",", aws_instance.bar.*.foo)}"
}
