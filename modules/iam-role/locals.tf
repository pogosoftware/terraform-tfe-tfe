locals {
  create_iam_role = var.create_iam_role == true ? 1 : 0
  plan_role_name  = format("%s-plan", var.name_preffix)
  apply_role_name = format("%s-apply", var.name_preffix)
}
