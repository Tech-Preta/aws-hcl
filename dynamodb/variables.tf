# Variável que define a região da AWS onde a tabela do DynamoDB será criada.
variable "region" {
  type = string
}

# Variável que controla se a tabela do DynamoDB e os recursos associados serão criados.
variable "create_table" {
  description = "Controla se a tabela do DynamoDB e os recursos associados serão criados."
  type        = bool
  default     = true
}

# Variável que define o nome da tabela do DynamoDB.
variable "name" {
  description = "Nome da tabela do DynamoDB."
  type        = string
  default     = null
}

# Variável que define a lista de definições de atributos aninhados. Apenas necessário para atributos hash_key e range_key. Cada atributo possui duas propriedades: name - (Obrigatório) O nome do atributo, type - (Obrigatório) O tipo do atributo, que deve ser um tipo escalar: S, N ou B para dados (S)tring, (N)úmero ou (B)inário.
variable "attributes" {
  description = "Lista de definições de atributos aninhados. Apenas necessário para atributos hash_key e range_key. Cada atributo possui duas propriedades: name - (Obrigatório) O nome do atributo, type - (Obrigatório) O tipo do atributo, que deve ser um tipo escalar: S, N ou B para dados (S)tring, (N)úmero ou (B)inário."
  type        = list(map(string))
  default     = []
}

# Variável que define o atributo a ser usado como chave hash (partição). Também deve ser definido como um atributo.
variable "hash_key" {
  description = "O atributo a ser usado como chave hash (partição). Também deve ser definido como um atributo."
  type        = string
  default     = null
}

# Variável que indica se os Streams devem ser habilitados (true) ou desabilitados (false).
variable "stream_enabled" {
  description = "Indica se os Streams devem ser habilitados (true) ou desabilitados (false)."
  type        = bool
  default     = false
}

# Variável que define um mapa de tags para adicionar a todos os recursos.
variable "tags" {
  description = "Um mapa de tags para adicionar a todos os recursos."
  type        = map(string)
  default     = {}
}
