resource "aws_instance" "remote_server" {
  ami           = "ami-0f5fcdfbd140e4ab7" # ubuntu 20.04 LTS OS
  instance_type = "t3.micro"

  # Networking
  subnet_id     = "subnet-08d7af6c76d055b65"
  vpc_security_group_ids = ["sg-0324db62ddd38cc5e"]

  # SSH Access
  key_name = "cloud-1-keys"

  tags = {
    Name = "cloud-1"
  }
}
