module "adaptive_iaam" {
  source = "./modules/adaptive_iaam"

  resource_group_name = var.resource_group_name
  location            = var.location
  prefix              = var.prefix
  tags                = var.tags
}

# Variables for resource organization and parameterization
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "adaptive-iam-rg"
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
  default     = "East US"
}

variable "prefix" {
  description = "Prefix for naming resources"
  type        = string
  default     = "adaptiveiam"
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {
    environment = "PoC"
    project     = "Adaptive IAM"
  }
}
