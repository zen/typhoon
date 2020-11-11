output "target_group_http" {
  description = "ARN of a target group of workers for HTTP traffic"
  value       = var.ingress_http_enabled ? aws_lb_target_group.workers-http.arn : null
}

output "target_group_https" {
  description = "ARN of a target group of workers for HTTPS traffic"
  value       = var.ingress_http_enabled? aws_lb_target_group.workers-https.arn : null
}

output "workers_group" {
  description = "ID of autoscaling group for workers machines"
  value       = aws_autoscaling_group.workers.id
}
