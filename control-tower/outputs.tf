/**
 * Output: account_id
 * 
 * Descrição: O ID da conta
 * 
 * Valor: O ID da conta do recurso aws_organizations_account.my_account
 */
output "account_id" {
  description = "The ID of the account"
  value       = aws_organizations_account.my_account.id
}
