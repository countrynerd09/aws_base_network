# Base Network for nomad-in-aws Repository

## Pre-deployment Requirements
1. You have an AWS account created
2. You have HashiCorp Terraform, git and AWS CLI installed on your local machine
3. You have created an IAM user assigned the appropriate permissions and created an access key (This will be needed by Terraform and Packer)
4. You have an IDE installed such as Visual Studio Code
5. The network configuration in this code must be deployed before the nomad-in-aws is deployed.  Nomad-in-aws deployment expects the network to be in place before execution.
## Pre-deployment Installation
* Terraform installation can be found at: https://developer.hashicorp.com/terraform/downloads
* AWS CLI installation can be found at: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
* Git installation can be found at: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
## Deployment steps
To deploy the base_network follow the same steps in the nomad-in-aws except use this repository to deploy the base_network.
