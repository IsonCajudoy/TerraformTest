#RT creation public
resource "aws_route_table" "publicRT" {
  vpc_id = aws_vpc.main.id

route {
  cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.demo-igw.id
}

tags = {
  Name = "publicRT"
}
}

#RT creation private
resource "aws_route_table" "privateRT" {
  vpc_id = aws_vpc.main.id


route {
  cidr_block = "10.0.0.0/16"
  gateway_id = "local"
}

tags = {
  Name = "privateRT"
}
}
  

#routetable association #public
resource "aws_route_table_association" "public-subnet1-route-aws_route_table_association" {
  subnet_id = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.publicRT.id
}

resource "aws_route_table_association" "public-subnet2-route-aws_route_table_association" {
  subnet_id = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.publicRT.id
}

#routetable association #private
resource "aws_route_table_association" "private-subnet-1" {
  subnet_id = aws_subnet.private-subnet-1.id
  route_table_id = aws_route_table.privateRT.id
}

resource "aws_route_table_association" "private-subnet-2" {
  subnet_id = aws_subnet.private-subnet-2.id
  route_table_id = aws_route_table.privateRT.id
}
