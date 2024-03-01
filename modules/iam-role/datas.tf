data "aws_caller_identity" "current" {}

data "hcp_organization" "this" {}

data "aws_iam_policy_document" "plan" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRoleWithWebIdentity"]

    principals {
      type        = "Federated"
      identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:oidc-provider/app.terraform.io"]
    }

    condition {
      test     = "StringEquals"
      variable = "app.terraform.io:aud"
      values   = [var.tfe_aws_workload_identity_audience]
    }

    condition {
      test     = "StringLike"
      variable = "app.terraform.io:sub"
      values   = ["organization:${data.hcp_organization.this.name}:project:${var.tfe_project}:workspace:${var.tfe_workspace}:run_phase:plan"]
    }
  }
}

data "aws_iam_policy_document" "apply" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRoleWithWebIdentity"]

    principals {
      type        = "Federated"
      identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:oidc-provider/app.terraform.io"]
    }

    condition {
      test     = "StringEquals"
      variable = "app.terraform.io:aud"
      values   = [var.tfe_aws_workload_identity_audience]
    }

    condition {
      test     = "StringLike"
      variable = "app.terraform.io:sub"
      values   = ["organization:${data.hcp_organization.this.name}:project:${var.tfe_project}:workspace:${var.tfe_workspace}:run_phase:apply"]
    }
  }
}
