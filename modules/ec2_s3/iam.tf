resource "aws_iam_role" "s3_access_role" {
  name               = "s3-access-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}
resource "aws_iam_policy" "s3_access_policy" {
  name        = "s3-access-policy"
  description = "A policy to allow access to S3"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = [
          "s3:ListBucket",
          "s3:GetObject"
        ]
        Effect   = "Allow"
        Resource = [
          "arn:aws:s3:::-${tf_bucket}",         # Replace with your bucket name
          "arn:aws:s3:::-${tf_bucket}/*"        # Replace with your bucket name
        ]
      }
    ]
  })
}