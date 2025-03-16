provider "aws" {
    region = "us-east-1"
  
}
module "ec2_s3" {
    source = "./modules/ec2_s3"
    ami = "ami-08b5b3a93ed654d19"
    instance_type  = "t2.micro"
    instance_name  = "Terraform-EC2"
    bucket_name =   "my_tf_demo123456-${terraform.workspace}"
}   
