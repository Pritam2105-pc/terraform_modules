provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAZ3YXIFTKIE7JQS4D"
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


