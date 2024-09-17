resource "aws_route53_record" "r53_records" {
  count=length(var.instance_name)
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  #records = [for instance in aws_instance.terraform : instance.private_ip] 
  records = [aws_instance.terraform[count.index].private_ip]
  allow_overwrite = true
}