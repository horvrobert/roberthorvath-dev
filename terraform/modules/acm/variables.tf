variable "domain_name" {
  description = "Root domain name"
  type        = string
}

variable "route53_zone_id" {
  description = "Route 53 hosted zone ID for DNS validation"
  type        = string
}