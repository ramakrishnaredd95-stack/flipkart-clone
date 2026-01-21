variable "resource_group" {
  description = "Azure resource group name"
  type        = string
  default     = "Flipkart-clone"
}
variable "location" {
  description = "azure default location"
  type        = string
  default     = "canadacentral"
}
variable "asp" {
  description = "Azure App Service Plan name"
  type        = string
  default     = "Flipkart-clone-asp"
}

variable "webapp" {
  description = "Azure App Service name"
  type        = string
  default     = "Flipkart-clone-webapp"
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  default     = "16d60876-2016-4013-9895-cc00224e539c"
}
