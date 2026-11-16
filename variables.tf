variable "location" {
  description = "Azure region for the AKS deployment."
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Name of the Azure resource group for the AKS cluster."
  type        = string
  default     = "rg-aks-demo"
}

variable "cluster_name" {
  description = "Name of the AKS cluster."
  type        = string
  default     = "aks-demo-cluster"
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster."
  type        = string
  default     = "aks-demo"
}

variable "kubernetes_version" {
  description = "Kubernetes version to deploy."
  type        = string
  default     = "1.29.7"
}

variable "node_count" {
  description = "Initial number of worker nodes in the default node pool."
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "Size of the virtual machines used for the AKS worker nodes."
  type        = string
  default     = "Standard_DS2_v2"
}

variable "vnet_address_space" {
  description = "CIDR block for the AKS virtual network."
  type        = list(string)
  default     = ["10.10.0.0/16"]
}

variable "subnet_address_prefixes" {
  description = "CIDR block for the AKS subnet."
  type        = list(string)
  default     = ["10.10.1.0/24"]
}

variable "log_analytics_workspace_name" {
  description = "Name of the Log Analytics workspace used by AKS monitoring."
  type        = string
  default     = "law-aks-demo"
}

variable "log_analytics_sku" {
  description = "SKU for the Log Analytics workspace."
  type        = string
  default     = "PerGB2018"
}

variable "tags" {
  description = "Tags applied to all Azure resources."
  type        = map(string)
  default = {
    environment = "dev"
    managed_by  = "terraform"
    project     = "aks-demo"
  }
}
