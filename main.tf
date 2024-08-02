# Create the public route table. Provides a rule that determines where public network traffic is directed.
resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }

  tags = {
    Name = var.public_route_name
  }
}

# Create the Public Route Table Association. Connects the public route table and the subnet.
resource "aws_route_table_association" "public" {
  subnet_id      = var.public_subnet_id
  route_table_id = aws_route_table.public.id
}

# Create the Private Route Table. Provides a rule that denies communication with the internet. 
resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  # No explicit routes needed, as default VPC routing handles internal traffic and does not allow outbound communication.

  tags = {
    Name = var.private_route_name
  }
}

# Create the Private Route Table Association. Connects the private route table and the subnet.
resource "aws_route_table_association" "private" {
  subnet_id      = var.private_subnet_id
  route_table_id = aws_route_table.private.id
}