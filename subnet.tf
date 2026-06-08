resource "aws_subnet" "my_subnet" {
 vpc_id = aws_vpc.my_vpc.id
 cidr_block = "10.1.0.0/24"
 availability_zone = "us-east-1a"
 map_public_ip_on_launch = true
 tags = {
    Name = "my-subnet"
 }   
}