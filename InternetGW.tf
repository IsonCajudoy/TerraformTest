resource "aws_internet_gateway" "demo-igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "demo-igw"
  }
}