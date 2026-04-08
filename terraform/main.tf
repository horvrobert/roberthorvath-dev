terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.10"
}

provider "aws" {
  region = var.aws_region
}

# ACM certificate must be in us-east-1 for CloudFront
provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}

module "s3" {
  source      = "./modules/s3"
  domain_name = var.domain_name
}

module "acm" {
  source          = "./modules/acm"
  domain_name     = var.domain_name
  route53_zone_id = module.route53.zone_id
  providers = {
    aws = aws.us_east_1
  }
}

module "cloudfront" {
  source              = "./modules/cloudfront"
  domain_name         = var.domain_name
  s3_bucket_id        = module.s3.bucket_id
  s3_bucket_arn       = module.s3.bucket_arn
  s3_regional_domain  = module.s3.regional_domain_name
  acm_certificate_arn = module.acm.certificate_arn
}

module "route53" {
  source             = "./modules/route53"
  domain_name        = var.domain_name
  cloudfront_domain  = module.cloudfront.domain_name
  cloudfront_zone_id = module.cloudfront.hosted_zone_id
}