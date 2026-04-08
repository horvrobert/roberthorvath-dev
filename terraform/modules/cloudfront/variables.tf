variable "domain_name" {
  description = "Root domain name"
  type        = string
}

variable "s3_bucket_id" {
  description = "S3 bucket ID"
  type        = string
}

variable "s3_bucket_arn" {
  description = "S3 bucket ARN"
  type        = string
}

variable "s3_regional_domain" {
  description = "S3 bucket regional domain name"
  type        = string
}

variable "acm_certificate_arn" {
  description = "ACM certificate ARN from us-east-1"
  type        = string
}