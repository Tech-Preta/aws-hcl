# Variável: region
# Tipo: string
# Descrição: Região padrão do Control Tower
# Valor padrão: "us-east-1"
variable "region" {
  type        = string
  description = "Região padrão do Control Tower"
  default     = "us-east-1"
}

# Variável: name
# Tipo: string
# Descrição: Nome da conta de ambiente
variable "name" {
  type        = string
  description = "Nome da conta de ambiente"
}

# Variável: email
# Tipo: string
# Descrição: Email da conta de ambiente da AWS
variable "email" {
  type        = string
  description = "Email da conta de ambiente da AWS"
}

# Variável: environment
# Tipo: string
# Descrição: Nome padrão da fábrica de contas
# Valor padrão: "Environments"
variable "environment" {
  type        = string
  description = "Nome padrão da fábrica de contas"
  default     = "Environments"
}

# Variável: organization_id
# Tipo: string
# Descrição: ID da organização padrão do Control Tower
# Valor padrão: "insert-organization-id"
variable "organization_id" {
  type        = string
  description = "ID da organização padrão do Control Tower"
  default     = "insert-organization-id"
}

# Variável: tags
# Tipo: map(any)
# Descrição: Mapeamento de tags da conta do Control Tower
variable "tags" {
  type        = map(any)
  description = "Mapeamento de tags da conta do Control Tower"
}

# Variável: sso_name
# Tipo: string
# Descrição: Nome padrão da conta SSO
# Valor padrão: "Example"
variable "sso_name" {
  type        = string
  description = "Nome padrão da conta SSO"
  default     = "Example"
}

# Variável: sso_last_name
# Tipo: string
# Descrição: Sobrenome padrão da conta SSO
# Valor padrão: "Example"
variable "sso_last_name" {
  type        = string
  description = "Sobrenome padrão da conta SSO"
  default     = "Example"
}

# Variável: sso_email
# Tipo: string
# Descrição: Email padrão para criar conta SSO
# Valor padrão: "example@example.com.br"
variable "sso_email" {
  type        = string
  description = "Email padrão para criar conta SSO"
  default     = "example@example.com.br"
}
