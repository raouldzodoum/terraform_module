resource "aws_instance" "web" {
  count =  "${var.ec2_count}"
  ami           = "${var.ami_id}" # us-west-2
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.subnet_id}"    
  tags = {
    "name" = "man"
  }
}