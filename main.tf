# The random provider is used to generate a unique suffix for the site name,
# ensuring that multiple users can deploy this project without naming conflicts.
resource "random_string" "site_suffix" {
  length  = 8
  upper   = false
  special = false
}

# resource "netlify_deploy_key" "key" {
#   # Optionally customize
# }

# resource "netlify_site" "app_site" {
#   name = "${var.site_name}-${random_string.site_suffix.id}"

#   repo {
#     provider       = "github"
#     repo_path      = "${var.github_username}/${var.github_repo}"
#     repo_branch    = "main"
#     build_dir      = "/app"
#     deploy_key_id  = netlify_deploy_key.key.id
#   }
# }


# resource "netlify_site_build_settings" "app_site" {

#   site_id                = data.netlify_site.app_site.id
#   build_command          = "npm run build"
#   publish_directory      = "dist"
#   production_branch      = "master"
#   branch_deploy_branches = ["preview", "master"]
# }

