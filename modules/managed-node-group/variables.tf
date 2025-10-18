variable "project_name" {
  type        = string
  description = "nome para usar nos recursos do projeto (tag)"
}

variable "tags" {
  type        = map(any)
  description = "tags para adicionar nos recursos AWS"
}

variable "cluster_name" {
  type        = string
  description = "Nome do cluster EKS para craiação do Node Group"
}
variable "subnet_private_1a" {
  type        = string
  description = "ID da sub-rede privada 1a"
}
variable "subnet_private_1b" {
  type        = string
  description = "ID da sub-rede privada 1b"
}