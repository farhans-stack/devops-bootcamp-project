resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.devops.id
  cidr_block              = "10.0.0.0/25"
  availability_zone       = "ap-southeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "devops-public-subnet"
  }
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.devops.id
  cidr_block        = "10.0.0.128/25"
  availability_zone = "ap-southeast-1a"

  tags = {
    Name = "devops-private-subnet"
  }
}
