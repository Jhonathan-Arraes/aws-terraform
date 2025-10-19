variable "cidr_block" {
  type        = string
  description = "Criando bloco de rede CIDR para a VPC"
}

variable "project_name" {
  type        = string
  description = "nome para usar nos recursos do projeto (tag)"
}

variable "region" {
  type        = string
  description = "região AWS onde os recursos serão criados"
}

variable "tags" {
  type        = map
  description = "tags para aplicar aos recursos em toda AWS"
}