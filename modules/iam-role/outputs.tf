output "plan_role_arn" {
  description = "The ARN of IAM plan role"
  value       = aws_iam_role.plan.arn
}

output "apply_role_arn" {
  description = "The ARN of IAM apply role"
  value       = aws_iam_role.apply.arn
}
