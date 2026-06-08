data "aws_ami" "amazon_linux"{
    most_recent = true
    owners = ["amazon"]
    filter{
        name = "name"
        values=["amzn2-ami-hvm-*-x86_64-gp2"]
    }
}
resource "aws_instance" "my_ec2"{
    ami=data.aws_ami.amazon_linux.id
    instnce_type = "t2.micro"
    subnet_id=aws_subnet.my_subnet.id
    vpc_security_group_ids = [aws_security_group.my_sg.id]
    key_name= "LAPTOPKEY"
    tags = {
        Name = "my-ec2"
    }
}