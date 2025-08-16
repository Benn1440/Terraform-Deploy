# Netlify Site Deployment with HCP Terraform

Deploys a basic website to Netlify with remote state management in HCP Terraform.

# Solution Architecture
[Local Terraform] → [HCP Terraform State] → [Netlify Hosting]

## Prerequisites

- Terraform v1.5+
- Netlify account with API token
- HCP Terraform account
- GitHub account (optional)

## Setup

1. Clone this repository
2. Set environment variables:
   ```bash
   export NETLIFY_TOKEN="your_netlify_token"