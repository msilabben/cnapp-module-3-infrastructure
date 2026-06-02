package custom.azure.iam

deny[msg] {
  resource := input.resources[_]
  resource.type == "azurerm_role_assignment"

  resource.properties.role_definition_name == "Owner"

  msg := {
    "message": "Found Azure Owner role assignment. Consider using Contributor or a custom role for least privilege.",
    "target": resource.id
  }
}
