# Variável que controla se o bucket S3 deve ser criado
variable "create_bucket" {
  description = "Controls if S3 bucket should be created"
  type        = bool
  default     = true
}

# Status de aceleração do bucket S3. Pode ser "Enabled" ou "Suspended".
variable "acceleration_status" {
  description = "(Optional) Sets the accelerate configuration of an existing bucket. Can be Enabled or Suspended."
  type        = string
  default     = null
}

# ID da conta do proprietário esperado do bucket
variable "expected_bucket_owner" {
  description = "The account ID of the expected bucket owner"
  type        = string
  default     = null
}

# Nome do bucket S3
variable "name" {
  type        = string
  description = "Nome do Bucket S3."
}

# Toggle para usar um prefixo gerado aleatoriamente para o nome do bucket
variable "use_prefix" {
  type        = bool
  description = "Toggle para usar um prefixo gerado aleatoriamente para o nome do bucket."
  default     = false
}

# Toggle para habilitar a criação de tags padrão, contendo o identificador do Workspace do Terraform
variable "use_default_tags" {
  type        = bool
  description = "Toggle para habilitar a criação de tags padrão, contendo o identificador do Workspace do Terraform."
  default     = true
}

# Mapeamento de tags do bucket S3
variable "tags" {
  type        = map(any)
  description = "Mapeamento de tags do bucket S3."
}

# Toggle para habilitar a destruição forçada do bucket S3
variable "force_destroy" {
  type        = bool
  description = "Toggle para habilitar a destruição forçada do bucket S3."
  default     = false
}

# Mapa de configuração de versionamento do bucket S3
variable "versioning" {
  type        = map(string)
  description = "Mapa de configuração de versionamento do bucket S3."
  default     = {}
}

# Lista de regras de ciclo de vida do bucket S3
variable "lifecycle_rule" {
  type        = list(any)
  description = "Lista de regras de ciclo de vida do bucket S3."
  default     = []
}

# Configuração de criptografia do lado do servidor (SSE) do bucket S3
variable "server_side_encryption_configuration" {
  type        = map(any)
  description = "Configuração de criptografia do lado do servidor (SSE) do bucket S3."
  default     = {}
}
