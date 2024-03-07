################################################################################
# Balanceador de Carga
################################################################################

output "id" {
  description = "O ID e ARN do balanceador de carga que criamos"
  value       = try(aws_lb.this[0].id, null)
}

output "arn" {
  description = "O ID e ARN do balanceador de carga que criamos"
  value       = try(aws_lb.this[0].arn, null)
}

output "arn_suffix" {
  description = "Sufixo ARN do nosso balanceador de carga - pode ser usado com o CloudWatch"
  value       = try(aws_lb.this[0].arn_suffix, null)
}

output "dns_name" {
  description = "O nome DNS do balanceador de carga"
  value       = try(aws_lb.this[0].dns_name, null)
}

output "zone_id" {
  description = "O zone_id do balanceador de carga para auxiliar na criação de registros DNS"
  value       = try(aws_lb.this[0].zone_id, null)
}

################################################################################
# Listener(s)
################################################################################

output "listeners" {
  description = "Mapa de listeners criados e seus atributos"
  value       = aws_lb_listener.this
}

output "listener_rules" {
  description = "Mapa de regras de listeners criadas e seus atributos"
  value       = aws_lb_listener_rule.this
}

################################################################################
# Grupo(s) de Destino
################################################################################

output "target_groups" {
  description = "Mapa de grupos de destino criados e seus atributos"
  value       = aws_lb_target_group.this
}

################################################################################
# Grupo de Segurança
################################################################################

output "security_group_arn" {
  description = "Nome do Recurso Amazon (ARN) do grupo de segurança"
  value       = try(aws_security_group.this[0].arn, null)
}

output "security_group_id" {
  description = "ID do grupo de segurança"
  value       = try(aws_security_group.this[0].id, null)
}

################################################################################
# Registro(s) do Route53
################################################################################

output "route53_records" {
  description = "Os registros do Route53 criados e anexados ao balanceador de carga"
  value       = aws_route53_record.this
}
