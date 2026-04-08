output "zone_id" {
  value = aws_route53_zone.website.zone_id
}

output "name_servers" {
  value = aws_route53_zone.website.name_servers
}