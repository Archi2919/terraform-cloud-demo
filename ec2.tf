resource "aws_instance" "ec2-vm" {
  ami           = data.aws_ami.amzlinux.id
  instance_type = var.instance_type
  tags = {
    "Name" = "Terraform-Cloud"
  }
}
