output "cloudfront_domain" {
  description = "CloudFront distribution domain name"
  value       = module.cloudfront.domain_name
}

output "cloudfront_distribution_id" {
  description = "CloudFront distribution ID — needed for cache invalidation"
  value       = module.cloudfront.distribution_id
}

output "route53_name_servers" {
  description = "Paste these four nameservers into Porkbun to delegate DNS to Route 53"
  value       = module.route53.name_servers
}

output "s3_bucket" {
  description = "S3 bucket name — used for uploading frontend files"
  value       = module.s3.bucket_id
}