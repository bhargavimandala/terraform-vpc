# create public subnet

resource "aws_subnet" "public_subnet" {
  count      = 2
  vpc_id     = "${aws_vpc.vpc.id}"
  map_public_ip_on_launch = true
  cidr_block = "${var.public_cidr[count.index]}"
  availability_zone = "${element(var.availability_zones, count.index)}"


  tags = {
    Name = "${var.global_product}.${var.global_environment}-public_subnet.${count.index + 1}"
  }
}


#craeting private subnet

resource "aws_subnet" "private_subnet" {
  count      = 2
  vpc_id     = "${aws_vpc.vpc.id}"
  map_public_ip_on_launch = true
  cidr_block = "${var.private_cidr[count.index]}"
  availability_zone = "${element(var.availability_zones, count.index)}"


  tags = {
    Name = "${var.global_product}.${var.global_environment}-private_subnet.${count.index + 1}"
  }
}


