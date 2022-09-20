resource "aws_instance" "b" {
  count       = length(var.ids)
  require_new = var.ids[count.index]
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

variable "ids" {
  type = list(string)
}
