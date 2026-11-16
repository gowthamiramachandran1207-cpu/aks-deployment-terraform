# AKS Deployment with Terraform

This project provisions a basic Azure Kubernetes Service (AKS) cluster using Terraform.

## Prerequisites

- Azure CLI installed and logged in
- Terraform >= 1.5.0 installed
- An Azure subscription

## Azure authentication

Authenticate to Azure:

```bash
az login
az account set --subscription "<your-subscription-id-or-name>"
```

## Initialize Terraform

```bash
terraform init
```

## Review the deployment plan

```bash
terraform plan
```

## Deploy the infrastructure

```bash
terraform apply
```

## Access the cluster

After deployment, get the kubeconfig:

```bash
az aks get-credentials --resource-group <resource-group-name> --name <cluster-name> --overwrite-existing
```

Then test connectivity:

```bash
kubectl get nodes
```

## Cleanup

```bash
terraform destroy
```

## Customization

You can edit the default values in `variables.tf` or create a `terraform.tfvars` file:

```hcl
location             = "eastus"
resource_group_name  = "rg-aks-demo"
cluster_name         = "aks-demo-cluster"
dns_prefix           = "aks-demo"
node_count           = 2
vm_size              = "Standard_DS2_v2"
```
