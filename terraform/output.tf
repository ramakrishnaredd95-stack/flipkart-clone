output "webapp_name" {
  description = "Azure Windows Web App name"
  value       = azurerm_windows_web_app.webapp.name
}

output "webapp_uri" {
  description = "Public HTTPS endpoint of the Web App"
  value       = "https://${azurerm_windows_web_app.webapp.default_hostname}"
}
