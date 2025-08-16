# Netlify Site Deployment with HCP Terraform

Deploys a basic website to Netlify with remote state management in HCP Terraform.

# Solution Architecture
[Local Terraform] → [HCP Terraform State] → [Netlify Hosting]

## Prerequisites

- Before you begin, ensure you have the following:
- Terraform v1.5+
1.  **A Netlify Account:** [Sign up for a free account](https://www.netlify.com/).
2.  **An HCP Terraform Account:** [Sign up for a free account](https://app.terraform.io/).
3.  **Terraform CLI:** Install [Terraform](https://developer.hashicorp.com/terraform/downloads). Version 1.0+ is recommended.


## Setup

### 1. Configure Netlify Credentials

You need a Netlify Personal Access Token to allow Terraform to deploy to your account.

1.  Go to your Netlify dashboard.
2.  Navigate to **User settings > Applications > Personal access tokens**.
3.  Click **New access token** and give it a descriptive name.
4.  Copy the generated token.

1. Clone this repository
2. Set environment variables:
   ```bash
   export NETLIFY_TOKEN="your_netlify_token"
