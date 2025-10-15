variable "project_name" {
  type        = string
  description = "nome para usar nos recursos do projeto (tag)"
}

variable "tags" {
  type        = map(any)
  description = "tags para adicionar nos recursos AWS"
}