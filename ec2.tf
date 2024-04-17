resource "aws_instance" "ViaTerraformEC2Instance" {
 ami = "ami-0395649fbe870727e"
 instance_type = "t2.micro"
 tags = {
    Name = "ViaTerraformEC2Instance"
 }
}

