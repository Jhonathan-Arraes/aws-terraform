resource "aws_eip" "eks_ngw_eip_1a" {
  domain       = "vpc"
  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}_elastic_ip_1a"
    }
  )
}

resource "aws_eip" "eks_ngw_eip_1b" {
  domain       = "vpc"
  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}_elastic_ip_1b"
    }
  )
}

resource "aws_nat_gateway" "eks_igw_1a" {
  allocation_id = aws_eip.eks_ngw_eip_1a.id
  subnet_id     = aws_subnet.eks_subnet_public_1a.id

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}_nat_gateway_1a"
    }
  )
}

resource "aws_nat_gateway" "eks_igw_1b" {
  allocation_id = aws_eip.eks_ngw_eip_1b.id
  subnet_id     = aws_subnet.eks_subnet_public_1b.id

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}_nat_gateway_1b"
    }
  )
}

resource "aws_route_table" "eks_private_route_table_1a" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.eks_igw_1a.id
  }


  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}_private_route_table_1a"
    }
  )
}

resource "aws_route_table" "eks_private_route_table_1b" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.eks_igw_1b.id
  }


  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}_private_route_table_1b"
    }
  )
}