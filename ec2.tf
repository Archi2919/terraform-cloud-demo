resource "aws_instance" "ec2-vm" {
  ami                    = data.aws_ami.amzlinux.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  count                  = 1
  tags = {
    "Name" = "Terraform-Cloud"
  }
}
