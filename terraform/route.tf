# Public Route Table (Option A: public-only)
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.devops.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.devops.id
  }

  tags = {
    Name    = "rt-public"
    Project = var.project
    Env     = var.env
  }
}

# Associate public subnet to public route table
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}