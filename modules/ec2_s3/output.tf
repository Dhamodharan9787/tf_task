output "instance_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.my_ec2-1.public_ip
}
output "bucket_name" {
  description = "The name of the S3 bucket"
  value = aws_s3_bucket.tf_bucket.bu
}