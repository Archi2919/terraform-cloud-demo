resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh-${terraform.workspace}"
  description = "VPC SSH"
  ingress = [{
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow port 22"
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }]
  egress = [{
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all ip and ports outbound"
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }]
}

resource "aws_security_group" "vpc-web" {
  name        = "vpc-web-${terraform.workspace}"
  description = "VPC Web"
  ingress = [{
    cidr_blocks = ["0.0.0.0/16"]
    description = "Allow port 80"
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }]
}
