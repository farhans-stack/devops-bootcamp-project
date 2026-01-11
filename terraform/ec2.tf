data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_instance" "web" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public.id
  private_ip                  = "10.0.0.5"
  associate_public_ip_address = true
  security_groups             = [aws_security_group.public.id]
  iam_instance_profile        = aws_iam_instance_profile.ssm_profile.name

  tags = {
    Name = "devops-web-server"
  }
}

resource "aws_instance" "ansible" {
  ami                  = data.aws_ami.ubuntu.id
  instance_type        = "t3.micro"
  subnet_id            = aws_subnet.private.id
  private_ip           = "10.0.0.135"
  security_groups      = [aws_security_group.private.id]
  iam_instance_profile = aws_iam_instance_profile.ssm_profile.name

  tags = {
    Name = "devops-ansible-controller"
  }
}

resource "aws_instance" "monitoring" {
  ami                  = data.aws_ami.ubuntu.id
  instance_type        = "t3.micro"
  subnet_id            = aws_subnet.private.id
  private_ip           = "10.0.0.136"
  security_groups      = [aws_security_group.private.id]
  iam_instance_profile = aws_iam_instance_profile.ssm_profile.name

  tags = {
    Name = "devops-monitoring-server"
  }
}
