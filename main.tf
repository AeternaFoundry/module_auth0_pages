resource "auth0_pages" "pages" {
  for_each = var.pages


  dynamic "change_password" {
    for_each = each.value.change_password != null ? [each.value.change_password] : []
    content {
      enabled = change_password.value.enabled
      html    = change_password.value.html
    }
  }

  dynamic "error" {
    for_each = each.value.error != null ? [each.value.error] : []
    content {
      html          = error.value.html
      show_log_link = error.value.show_log_link
      url           = error.value.url
    }
  }

  dynamic "guardian_mfa" {
    for_each = each.value.guardian_mfa != null ? [each.value.guardian_mfa] : []
    content {
      enabled = guardian_mfa.value.enabled
      html    = guardian_mfa.value.html
    }
  }

  dynamic "login" {
    for_each = each.value.login != null ? [each.value.login] : []
    content {
      enabled = login.value.enabled
      html    = login.value.html
    }
  }
}

