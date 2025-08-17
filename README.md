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

<img width="1437" height="784" alt="Screenshot 2025-08-16 at 21 29 06" src="https://github.com/user-attachments/assets/b422d150-5206-4065-b806-a627388dd3a4" /> <br><br>
4.  Copy the generated token.<br>

5. On your HCP Terraform Account, Create a Workspace

<img width="1467" height="573" alt="Screenshot 2025-08-16 at 21 28 41" src="https://github.com/user-attachments/assets/97febb2c-a4ce-4e0e-a8b7-5d4d5264d803" /> <br><br>
6. You should get a custom provider resource block to add to your project<br><br>

<img width="1470" height="740" alt="Screenshot 2025-08-16 at 21 33 53" src="https://github.com/user-attachments/assets/e4b883a0-b17e-4b23-ad71-9676aedcd477" /> <br><br>


1. Clone this repository
2. Set environment variables:
   ```bash
   export NETLIFY_TOKEN="your_netlify_token"

On your project terminal, run `terraform login`  to authenticate HCP Cloud <br><br>

<img width="2324" height="1026" alt="image" src="https://github.com/user-attachments/assets/27ffb17e-7c56-433d-b1d0-0f7adec6a154" /> <br><br>

<img width="1178" height="571" alt="image" src="https://github.com/user-attachments/assets/6d892a4c-f776-477e-8e0b-51075afb2428" /> <br><br>

- Perform your changes on your project, run  `terraform plan`

<img width="2192" height="1288" alt="image" src="https://github.com/user-attachments/assets/7aca5fa1-b0f8-479c-b336-8db55125aaa7" />

If you encounter any issues connecting, you can run the plan and apply by appending the token `terraform plan -var="NETLIFY_TOKEN=<your_token>"/` <br><br>

After a successful Terraform plan
<img width="2930" height="1546" alt="image" src="https://github.com/user-attachments/assets/f38a2cda-228c-4ba7-8ccb-ede7c3397af5" />

Run `terraform apply` and a successful build on HCP <br><br>
<img width="2940" height="1482" alt="image" src="https://github.com/user-attachments/assets/482e5a58-33f2-4a4b-8861-5540e10ea4bd" />

<img width="2938" height="1598" alt="image" src="https://github.com/user-attachments/assets/44c59fe8-75cd-4a59-bfe9-dedc0aa22d7a" />


