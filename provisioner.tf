resource "aws_instance" "provisioner" {
  ami           = "${data.aws_ami.ec2-user.id}"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"
  associate_public_ip_address = true
  instance_type = "t3.micro"
  key_name = "${aws_key_pair.class.key_name}"
}