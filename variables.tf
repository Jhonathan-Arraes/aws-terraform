variable "cidr_block" {
  type        = string
  description = "Criando bloco de rede CIDR para a VPC"
}

variable "project_name" {
  type        = string
  description = "nome para usar nos recursos do projeto (tag)"
}