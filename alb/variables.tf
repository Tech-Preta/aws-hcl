# Variáveis para criação do Load Balancer
variable "create" {
  description = "Controla se os recursos devem ser criados (afeta quase todos os recursos)."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Um mapa de tags para adicionar a todos os recursos."
  type        = map(string)
  default     = {}
}

################################################################################
# Load Balancer
################################################################################

variable "access_logs" {
  description = "Mapa contendo a configuração de registro de acesso para o load balancer."
  type        = map(string)
  default     = {}
}

variable "connection_logs" {
  description = "Mapa contendo a configuração de registro de conexão para o load balancer."
  type        = map(string)
  default     = {}
}

variable "customer_owned_ipv4_pool" {
  description = "O ID da pool de IPv4 de propriedade do cliente a ser usada para este load balancer."
  type        = string
  default     = null
}

variable "desync_mitigation_mode" {
  description = "Determina como o load balancer trata solicitações que podem representar um risco de segurança para um aplicativo devido a desincronização HTTP. Os valores válidos são `monitor`, `defensive` (padrão), `strictest`."
  type        = string
  default     = null
}

variable "dns_record_client_routing_policy" {
  description = "Indica como o tráfego é distribuído entre as zonas de disponibilidade do load balancer. Os valores possíveis são any_availability_zone (padrão), availability_zone_affinity ou partial_availability_zone_affinity. Somente válido para load balancers do tipo network."
  type        = string
  default     = null
}

variable "drop_invalid_header_fields" {
  description = "Indica se os cabeçalhos HTTP com campos de cabeçalho inválidos são removidos pelo load balancer (`true`) ou roteados para os targets (`false`). O padrão é `true`. O Elastic Load Balancing exige que os nomes dos cabeçalhos de mensagem contenham apenas caracteres alfanuméricos e hífens. Somente válido para Load Balancers do tipo `application`."
  type        = bool
  default     = true
}

variable "enable_cross_zone_load_balancing" {
  description = "Se `true`, o balanceamento de carga entre zonas do load balancer será habilitado. Para load balancers de aplicativos, esse recurso está sempre habilitado (`true`) e não pode ser desabilitado. Padrão: `true`."
  type        = bool
  default     = true
}

variable "enable_deletion_protection" {
  description = "Se `true`, a exclusão do load balancer será desabilitada via API da AWS. Isso impedirá que o Terraform exclua o load balancer. Padrão: `true`."
  type        = bool
  default     = true
}

variable "enable_http2" {
  description = "Indica se o HTTP/2 está habilitado nos load balancers de aplicativos. Padrão: `true`."
  type        = bool
  default     = null
}

variable "enable_tls_version_and_cipher_suite_headers" {
  description = "Indica se os dois cabeçalhos (`x-amzn-tls-version` e `x-amzn-tls-cipher-suite`), que contêm informações sobre a versão e o conjunto de criptografia TLS negociados, são adicionados à solicitação do cliente antes de enviá-la para o target. Somente válido para Load Balancers do tipo `application`. Padrão: `false`."
  type        = bool
  default     = null
}

variable "enable_waf_fail_open" {
  description = "Indica se um load balancer habilitado para WAF deve rotear solicitações para targets se não conseguir encaminhar a solicitação para o AWS WAF. Padrão: `false`."
  type        = bool
  default     = null
}

variable "enable_xff_client_port" {
  description = "Indica se o cabeçalho X-Forwarded-For deve preservar a porta de origem que o cliente usou para se conectar ao load balancer em load balancers de aplicativos. Padrão: `false`."
  type        = bool
  default     = null
}

variable "idle_timeout" {
  description = "O tempo em segundos que a conexão pode ficar ociosa. Somente válido para Load Balancers do tipo `application`. Padrão: `60`."
  type        = number
  default     = null
}

variable "internal" {
  description = "Se verdadeiro, o LB será interno. Padrão: `false`"
  type        = bool
  default     = null
}

variable "ip_address_type" {
  description = "O tipo de endereços IP usados pelas subnets para o load balancer. Os valores possíveis são `ipv4` e `dualstack`"
  type        = string
  default     = null
}

variable "load_balancer_type" {
  description = "O tipo de load balancer a ser criado. Os valores possíveis são `application`, `gateway` ou `network`. O valor padrão é `application`"
  type        = string
  default     = "application"
}

variable "enforce_security_group_inbound_rules_on_private_link_traffic" {
  description = "Indica se as regras de ingresso do grupo de segurança são aplicadas ao tráfego originado de um PrivateLink. Somente válido para Load Balancers do tipo network. Os valores possíveis são on e off."
  type        = string
  default     = null
}

variable "name" {
  description = "O nome do LB. Este nome deve ser exclusivo em sua conta da AWS, pode ter no máximo 32 caracteres, deve conter apenas caracteres alfanuméricos ou hífens e não pode começar ou terminar com um hífen."
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "Cria um nome exclusivo começando com o prefixo especificado. Conflita com `name`"
  type        = string
  default     = null
}

variable "preserve_host_header" {
  description = "Indica se o Application Load Balancer deve preservar o cabeçalho Host na solicitação HTTP e enviá-lo para o target sem nenhuma alteração. Padrão: `false`."
  type        = bool
  default     = null
}

variable "security_groups" {
  description = "Uma lista de IDs de grupos de segurança para atribuir ao LB."
  type        = list(string)
  default     = []
}

variable "subnet_mapping" {
  description = "Uma lista de blocos de mapeamento de subnets descrevendo as subnets a serem anexadas ao load balancer."
  type        = list(map(string))
  default     = []
}

variable "subnets" {
  description = "Uma lista de IDs de subnets para anexar ao LB. As subnets não podem ser atualizadas para Load Balancers do tipo `network`. Alterar esse valor para load balancers do tipo `network` forçará a recriação do recurso."
  type        = list(string)
  default     = null
}

variable "xff_header_processing_mode" {
  description = "Determina como o load balancer modifica o cabeçalho X-Forwarded-For na solicitação HTTP antes de enviá-la para o target. Os valores possíveis são `append`, `preserve` e `remove`. Somente válido para Load Balancers do tipo `application`. O padrão é `append`."
  type        = string
  default     = null
}

variable "timeouts" {
  description = "Configurações de tempo limite para criar, atualizar e excluir o load balancer."
  type        = map(string)
  default     = {}
}

################################################################################
# Listener(s)
################################################################################

variable "default_port" {
  description = "Porta padrão usada em todo o listener e target group."
  type        = number
  default     = 80
}

variable "default_protocol" {
  description = "Protocolo padrão usado em todo o listener e target group."
  type        = string
  default     = "HTTP"
}

variable "listeners" {
  description = "Mapa de configurações de listener para criar."
  type        = any
  default     = {}
}

################################################################################
# Target Group
################################################################################

variable "target_groups" {
  description = "Mapa de configurações de target group para criar."
  type        = any
  default     = {}
}

variable "additional_target_group_attachments" {
  description = "Mapa de anexos adicionais de target group para criar. Use `target_group_key` para anexar ao target group criado em `target_groups`."
  type        = any
  default     = {}
}

################################################################################
# Security Group
################################################################################

variable "create_security_group" {
  description = "Determina se um grupo de segurança será criado"
  type        = bool
  default     = true
}

variable "security_group_name" {
  description = "Nome a ser usado no grupo de segurança criado"
  type        = string
  default     = null
}

variable "security_group_use_name_prefix" {
  description = "Determina se o nome do grupo de segurança (`security_group_name`) é usado como prefixo."
  type        = bool
  default     = true
}

variable "security_group_description" {
  description = "Descrição do grupo de segurança criado"
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "Identificador da VPC onde o grupo de segurança será criado."
  type        = string
  default     = null
}

variable "security_group_ingress_rules" {
  description = "Regras de ingresso do grupo de segurança para adicionar ao grupo de segurança criado."
  type        = any
  default     = {}
}

variable "security_group_egress_rules" {
  description = "Regras de egresso do grupo de segurança para adicionar ao grupo de segurança criado."
  type        = any
  default     = {}
}

variable "security_group_tags" {
  description = "Um mapa de tags adicionais para adicionar ao grupo de segurança criado."
  type        = map(string)
  default     = {}
}

################################################################################
# Route53 Record(s)
################################################################################

variable "route53_records" {
  description = "Mapa de configurações de registro do Route53 para criar."
  type        = any
  default     = {}
}

################################################################################
# WAF
################################################################################

variable "associate_web_acl" {
  description = "Indicates whether a Web Application Firewall (WAF) ACL should be associated with the load balancer"
  type        = bool
  default     = false
}

variable "web_acl_arn" {
  description = "Web Application Firewall (WAF) ARN of the resource to associate with the load balancer"
  type        = string
  default     = null
}

