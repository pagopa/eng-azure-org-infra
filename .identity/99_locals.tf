locals {
  project  = "${var.prefix}-${var.env_short}"
  app_name = "github-${var.github.org}-${var.github.repository}-${var.env}"
  
  role_assignments_list = flatten([
    for k, v in var.subscriptions : [
      for role in v.role_name : {
        key             = k
        subscription_id = v.subscription_id
        role_name      = role
      }
    ]
  ])
}
