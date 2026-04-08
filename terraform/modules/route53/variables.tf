variable "domain_name" {
  description = "Root domain name"
  type        = string
}

variable "cloudfront_domain" {
  description = "CloudFront distribution domain name"
  type        = string
}

variable "cloudfront_zone_id" {
  description = "CloudFront hosted zone ID — fixed value for all CloudFront distributions"
  type        = string
}