variable "project_name" {
  type        = string
  description = "nome para usar nos recursos do projeto (tag)"
}

variable "tags" {
  type        = map(any)
  description = "tags para adicionar nos recursos AWS"
}

variable "oidc" {
  type        = string
  description = "https URL do provedor OIDC do cluster EKS"
}

variable "cluster_name" {
  type        = string
  description = "nome do cluster EKS"
}