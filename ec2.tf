
resource "aws_instance" "web" {
  #instance_type = var.instance_type
  #instance_type = var.instancetype_list[0] #with this kind of index, you can only access resource in a list one by one
  #with the use of length a terraform fxn, you will return or access all the element in a list or map
  #instance_type = var.instancetype_map["qa"]
  instance_type          = var.instance_type
  count                  = 3
  ami                    = data.aws_ami.ubuntu.id
  vpc_security_group_ids = [aws_security_group.alb_security_group.id]
  subnet_id              = aws_subnet.private_app_subnet_az1.id
  key_name               = var.key_pairs
  #You can attach multiple security group to an instance
  tags = {
    Name = "${var.environment}-${var.project-name}-ec2"
  }
}

###BASTION HOST
resource "aws_instance" "bastion" {
  instance_type          = var.instance_type
  ami                    = data.aws_ami.ubuntu.id
  vpc_security_group_ids = [aws_security_group.bastion_security_group.id]
  subnet_id              = aws_subnet.public_subnet_az2.id
  key_name               = var.key_pairs
  tags = {
    Name = "${var.environment}-${var.project-name}-ec2-bastion"
  }
}