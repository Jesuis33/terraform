# expressions with variable reference
variable "foo" {
  type = string
}

resource "aws_instance" "foo" {
  for_each = toset(
    [for i in range(0, 3) : sha1("${i}${var.foo}")]
  )
  foo = "foo"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

# referencing another resource, which means it has some unknown values in it
resource "aws_instance" "one" {
  for_each = toset(["a", "b"])
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "two" {
  for_each = aws_instance.one
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}
