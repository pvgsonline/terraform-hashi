resource "aws_route53_record" "r53_records" {
  for_each = var.aws_instance.terraform
  zone_id = var.zone_id
  name    = each.key == "frontend" ? domain_name : "${each.key}.${domain_name}"
  type    = "A"
  ttl     = 1
  #records = [for instance in aws_instance.terraform : instance.private_ip] 
  records = each.key == "frontend" ? [each.value.public_ip]: [each.value.private_ip]
  allow_overwrite = true
}