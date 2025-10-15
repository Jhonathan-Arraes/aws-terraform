variable "project_name" {
  type        = string
  description = "nome para usar nos recursos do projeto (tag)"
}

variable "tags" {
  type        = map(any)
  description = "tags para adicionar nos recursos AWS"
}

variable "public_subnet_1a" {
  type        = string
  description = "subnet para criar o EKS cluster AZ 1a"
}

variable "public_subnet_1b" {
  type        = string
  description = "subnet para criar o EKS cluster AZ 1b"
}