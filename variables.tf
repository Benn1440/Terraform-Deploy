# Defines a variable for the site name prefix. This allows users to customize
# the name without editing the main.tf file directly.
variable "site_name_prefix" {
  description = "A prefix for the Netlify site name."
  type        = string
  default     = "terraform-app"
}

variable "NETLIFY_TOKEN" {
  description = "Netlify API token"
  type        = string
  sensitive   = true
}