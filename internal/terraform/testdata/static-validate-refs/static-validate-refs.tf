terraform {
  required_providers {
    boop = {
      source = "foobar/beep" # intentional mismatch between local name and type
    }
  }
}

resource "aws_instance" "no_count" {
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "aws_instance" "count" {
  count = 1
  tags = {
    git_org  = "Jesuis33"
    git_repo = "terraform"
  }
}

resource "boop_instance" "yep" {
}

resource "boop_whatever" "nope" {
}

data "beep" "boop" {
}
