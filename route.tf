resource "aws_route_table" "internet_route_tbl" {
  vpc_id = aws_vpc.lab-vpc.id 
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "internet_route_table"
  }
}

resource "aws_route_table" "nat_route_tbl" {
  vpc_id = aws_vpc.lab-vpc.id 
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gw.id
  }
  tags = {
    Name = "nat_route_tbl"
  }
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.internet_route_tbl.id
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.nat_route_tbl.id
}

resource "aws_route_table_association" "data" {
  subnet_id      = aws_subnet.data
  route_table_id = aws_route_table.nat_route_tbl.id
}

