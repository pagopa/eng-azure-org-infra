resource "azurerm_role_assignment" "role" {
  for_each = { for assignment in local.role_assignments_list : join("-", [assignment.key, assignment.role_name]) => assignment }

  scope                = "subscriptions/${each.value.subscription_id}"
  role_definition_name = each.value.role_name
  principal_id         = azurerm_user_assigned_identity.prod.principal_id
}

resource "azurerm_role_assignment" "prod_tfinforg" {
  scope                = data.azurerm_storage_account.tfinforg.id
  role_definition_name = "Contributor"
  principal_id         = azurerm_user_assigned_identity.prod.principal_id
}
