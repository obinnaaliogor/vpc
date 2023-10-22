# create security group for the application load balancer
resource "aws_security_group" "alb_security_group" {
  name        = "alb_security_group"
  description = "enable http/https access on all port"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description = "all access"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "all_access_security_group"
  }
}

# create security group for the bastion host aka jump box
resource "aws_security_group" "bastion_security_group" {
  name        = "bastion_security_group"
  description = "enable ssh access on port 22"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description = "ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ssh_location
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "bastion_security_group"
  }
}
