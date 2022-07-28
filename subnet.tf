
resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.lab-vpc.id
  cidr_block = var.cidr_public
  tags = {
    Name = "public"
  }
}
resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.lab-vpc.id
  cidr_block = var.cidr_private
  tags = {
    Name = "private"
  }
}
resource "aws_subnet" "data-a" {
   # for_each = var.cidr_data
    vpc_id     = aws_vpc.lab-vpc.id
    cidr_block = var.cidr_data-a
    availability_zone = "eu-west-1b"
    
    tags = {
        Name = "data-a"
  }
}
resource "aws_subnet" "data-b" {
   # for_each = var.cidr_data
    vpc_id     = aws_vpc.lab-vpc.id
    cidr_block = var.cidr_data-b
    #availability_zone = join("", [var.aws_region, each.key])
    
    tags = {
        Name = "data-b"
  }
}

    