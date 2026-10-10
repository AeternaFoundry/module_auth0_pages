output "pages_id" {
  description = "Map of id values across all pages, keyed the same as var.pages except keys with no id are omitted"
  value       = { for k, v in auth0_pages.pages : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pages_change_password" {
  description = "Map of change_password values across all pages, keyed the same as var.pages except keys with no change_password are omitted"
  value       = { for k, v in auth0_pages.pages : k => one(v.change_password) if v.change_password != null && length(v.change_password) > 0 }
}
output "pages_error" {
  description = "Map of error values across all pages, keyed the same as var.pages except keys with no error are omitted"
  value       = { for k, v in auth0_pages.pages : k => one(v.error) if v.error != null && length(v.error) > 0 }
}
output "pages_guardian_mfa" {
  description = "Map of guardian_mfa values across all pages, keyed the same as var.pages except keys with no guardian_mfa are omitted"
  value       = { for k, v in auth0_pages.pages : k => one(v.guardian_mfa) if v.guardian_mfa != null && length(v.guardian_mfa) > 0 }
}
output "pages_login" {
  description = "Map of login values across all pages, keyed the same as var.pages except keys with no login are omitted"
  value       = { for k, v in auth0_pages.pages : k => one(v.login) if v.login != null && length(v.login) > 0 }
}

