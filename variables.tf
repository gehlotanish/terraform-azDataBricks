variable azurerm_resource_group_name {
  type        = string
  description = "Azure Resource Group Name"
}

variable location {
  type        = string
  description = "Azure Region location"
}

variable environment {
  type        = string
  description = "Resource Tags ENVIRONMENT Value"
}

variable databricks_name {
  type        = string
  description = "Databricks Workspace resource name"
}

variable databricks_sku {
  type        = string
  description = "Databricks SKU default 'standard'. Possible values are standard, premium, or trial"
  default     = "standard"
}
