provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAZ3YXIFTKGTZK4CVX"
  secret_key = "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"
}

resource "aws_instance" "ec2" {

   ami           = "ami-0cca134ec43cf708f"
   instance_type =  "t2.micro"
   count = var.instance_count

   tags = {
           Name = "Terraform EC2"
   }
}


