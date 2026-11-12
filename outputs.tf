output "pages_id" {
  description = "Map of id values across all pages, keyed the same as var.pages"
  value       = { for k, v in auth0_pages.pages : k => v.id }
}
output "pages_change_password" {
  description = "Map of change_password values across all pages, keyed the same as var.pages"
  value       = { for k, v in auth0_pages.pages : k => one(v.change_password) }
}
output "pages_error" {
  description = "Map of error values across all pages, keyed the same as var.pages"
  value       = { for k, v in auth0_pages.pages : k => one(v.error) }
}
output "pages_guardian_mfa" {
  description = "Map of guardian_mfa values across all pages, keyed the same as var.pages"
  value       = { for k, v in auth0_pages.pages : k => one(v.guardian_mfa) }
}
output "pages_login" {
  description = "Map of login values across all pages, keyed the same as var.pages"
  value       = { for k, v in auth0_pages.pages : k => one(v.login) }
}

