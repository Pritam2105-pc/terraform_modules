provider "aws" {
   region     = var.region
   profile = "myaws"
}

resource "aws_instance" "ec2" {

   ami           = "ami-0cca134ec43cf708f"
   instance_type =  "t2.micro"
   count = var.instance_count

   tags = {
           Name = "Terraform EC2"
   }
}


