# BAD: S3 bucket with public access - IaC scanner should catch this
resource "aws_s3_bucket" "bad_example" {
  bucket = "my-totally-public-bucket"
}

resource "aws_s3_bucket_public_access_block" "bad_example" {
  bucket = aws_s3_bucket.bad_example.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

# BAD: Security group open to world - IaC scanner should catch this
resource "aws_security_group" "bad_example" {
  name = "allow_everything"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
