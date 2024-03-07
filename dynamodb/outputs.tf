# Saída: dynamodb_table_arn
# Descrição: ARN da tabela DynamoDB
# Valor: O ARN da tabela DynamoDB, ou uma string vazia se não estiver definido

output "dynamodb_table_arn" {
  description = "ARN da tabela DynamoDB."
  value       = try(aws_dynamodb_table.this[0].arn, "")
}

# Saída: dynamodb_table_id
# Descrição: ID da tabela DynamoDB
# Valor: O ID da tabela DynamoDB, ou uma string vazia se não estiver definido

output "dynamodb_table_id" {
  description = "ID da tabela DynamoDB."
  value       = try(aws_dynamodb_table.this[0].id, "")
}

# Saída: dynamodb_table_stream_arn
# Descrição: O ARN do fluxo da tabela. Disponível apenas quando var.stream_enabled é verdadeiro
# Valor: O ARN do fluxo da tabela DynamoDB, ou nulo se var.stream_enabled for falso

output "dynamodb_table_stream_arn" {
  description = "O ARN do fluxo da tabela. Disponível apenas quando var.stream_enabled é verdadeiro."
  value       = var.stream_enabled ? try(aws_dynamodb_table.this[0].stream_arn, "") : null
}
