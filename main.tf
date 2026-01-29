provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "server" {
  ami                    = "ami-id"
  instance_type          = "t3.micro"

    tags = {
      name = "server"
  }


}


  
