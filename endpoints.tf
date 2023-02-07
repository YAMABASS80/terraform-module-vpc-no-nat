## VPC Endpoint for Amazon S3 (Gateway)
resource "aws_vpc_endpoint" "s3" {
  vpc_id       = aws_vpc.this.id
  service_name = "com.amazonaws.${data.aws_region.current.name}.s3"
}

resource "aws_vpc_endpoint_route_table_association" "private_subnet_1" {
  route_table_id  = aws_route_table.private_subnet_1_route_table.id
  vpc_endpoint_id = aws_vpc_endpoint.s3.id
}

resource "aws_vpc_endpoint_route_table_association" "private_subnet_2" {
  route_table_id  = aws_route_table.private_subnet_2_route_table.id
  vpc_endpoint_id = aws_vpc_endpoint.s3.id
}

resource "aws_vpc_endpoint_route_table_association" "public_subnet_1" {
  route_table_id  = aws_route_table.public_subnet_1_route_table.id
  vpc_endpoint_id = aws_vpc_endpoint.s3.id
}

resource "aws_vpc_endpoint_route_table_association" "public_subnet_2" {
  route_table_id  = aws_route_table.public_subnet_2_route_table.id
  vpc_endpoint_id = aws_vpc_endpoint.s3.id
}