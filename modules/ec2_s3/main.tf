resource "aws_instance" "my_ec2-1" {
  ami           = var.ami
  instance_type = var.instance_type 
#   security_groups = [aws_security_group.web_sg.name]
  tags = {
    Name = var.instance_name
  }
}
resource "aws_s3_bucket" "tf_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = var.bucket_name
    Environment = var.environment
  }
}
resource "aws_iam_role_policy_attachment" "s3_access_policy_attachment" {
  role       = aws_iam_role.s3_access_role.name
  policy_arn = aws_iam_policy.s3_access_policy.arn
}
