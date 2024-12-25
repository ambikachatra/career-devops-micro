provider "aws" {
    region = "us-east-1"
  
}
resource "aws_instance" "instance-1" {
    ami = "ami-013b2876e77b2db31"
    instance_type = "t2.micro"
    security_groups = ["default"]
    key_name = "ambika"
    user_data = file("grafana.sh")
    tags = {
        Name = "grafana-server"
    }
}

resource "aws_instance" "instance-2" {
    ami = "ami-013b2876e77b2db31"
    instance_type = "t2.micro"
    security_groups = ["default"]
    key_name = "ambika"
    tags = {
        Name = "Node-expo"
    }
}