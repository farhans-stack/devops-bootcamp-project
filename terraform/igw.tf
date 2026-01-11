resource "aws_internet_gateway" "devops" {
  vpc_id = aws_vpc.devops.id

  tags = {
    Name = "devops-igw"
  }
}
