provider "aws" {
    region = "us-east-1"
  
}
resource "aws_instance" "instance-1" {
    ami = "ami-01816d07b1128cd2d"
    instance_type = "t2.micro"
    security_groups = ["default"]
    key_name = aws_key_pair.my_key_pair.key_name
    user_data = file("grafana.sh")
    tags = {
        Name = "grafana-server"
    }

}

resource "aws_instance" "instance-2" {
    ami = "ami-01816d07b1128cd2d"
    instance_type = "t2.micro"
    security_groups = ["default"]
     key_name = aws_key_pair.my_key_pair.key_name
    tags = {
        Name = "Node-expo"
    }
}
resource "aws_key_pair" "my_key_pair" {
  key_name   = "root"
  public_key = file("${abspath(path.cwd)}/id_rsa_pub")
}