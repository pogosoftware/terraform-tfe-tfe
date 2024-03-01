### IAM ROLES
resource "aws_iam_role" "plan" {
  name               = local.plan_role_name
  path               = "/"
  assume_role_policy = data.aws_iam_policy_document.plan.json
}

resource "aws_iam_role" "apply" {
  name               = local.apply_role_name
  path               = "/"
  assume_role_policy = data.aws_iam_policy_document.apply.json
}

### IAM ROLE POLICIES
resource "aws_iam_role_policy" "plan" {
  name   = local.plan_role_name
  role   = aws_iam_role.plan.id
  policy = var.plan_role_policy_json
}

resource "aws_iam_role_policy" "apply" {
  name   = local.apply_role_name
  role   = aws_iam_role.apply.id
  policy = var.apply_role_policy_json
}
