resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-45891"
  acl    = "private"
  versioning {
    enabled = true
  logging {
    target_bucket = aws_s3_bucket.log_bucket.id
    target_prefix = "log/"
  }
  }
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
