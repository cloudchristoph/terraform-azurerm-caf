
resource "azuread_administrative_unit" "admu" {
  display_name              = var.settings.display_name
  description               = try(var.settings.description, null)
  members                   = try(var.settings.members, null)
  prevent_duplicate_names   = try(var.settings.prevent_duplicate_names, null)
  hidden_membership_enabled = try(var.settings.hidden_membership_enabled, null)
}
