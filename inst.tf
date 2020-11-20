data "aws_instance" "apache" {
  instance_id = "i-instanceid"

  filter {
    name   = "image-id"
    values = ["ami-xxxxxxxx"]
  }

  filter {
    name   = "tag:Name"
    values = ["instance-name-tag"]
  }
  tags       = "${var.tags}"
}


data "aws_instance" "mysql" {
  instance_id = "i-instanceid"

  filter {
    name   = "image-id"
    values = ["ami-xxxxxxxx"]
  }

  filter {
    name   = "tag:Name"
    values = ["instance-name-tag"]
  }
  tags       = "${var.tags}"
}