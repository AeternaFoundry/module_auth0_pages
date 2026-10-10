variable "pages" {
  description = <<EOT
Map of pages, attributes below
Optional:
    - change_password (block):
        - enabled (required)
        - html (required)
    - error (block):
        - html (optional)
        - show_log_link (required)
        - url (optional)
    - guardian_mfa (block):
        - enabled (required)
        - html (required)
    - login (block):
        - enabled (required)
        - html (required)
EOT

  type = map(object({
    change_password = optional(object({
      enabled = bool
      html    = string
    }))
    error = optional(object({
      html          = optional(string)
      show_log_link = bool
      url           = optional(string)
    }))
    guardian_mfa = optional(object({
      enabled = bool
      html    = string
    }))
    login = optional(object({
      enabled = bool
      html    = string
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

