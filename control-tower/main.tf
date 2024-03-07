/*
  Este arquivo de configuração do Terraform configura uma conta AWS Control Tower usando o recurso controltower_aws_account.

  Configuração do Provedor:
  - O provedor AWS é configurado com a região especificada na variável `var.region`.

  Configuração do Recurso:
  - O recurso `controltower_aws_account` cria uma conta AWS Control Tower com os seguintes atributos:
    - `name`: O nome da conta especificado na variável `var.name`.
    - `email`: O endereço de e-mail associado à conta especificado na variável `var.email`.
    - `organizational_unit`: A unidade organizacional (OU) onde a conta será colocada, especificada na variável `var.environment`.
    - `organizational_unit_id_on_delete`: O ID da unidade organizacional (OU) para onde a conta será movida quando for excluída, especificado na variável `var.organization_id`.
    - `tags`: Tags adicionais a serem aplicadas à conta. As tags incluem tags padrão como `Product`, `Resource`, `Service`, `Createdby` e `Description`, além de quaisquer tags especificadas na variável `var.tags`.
    - `sso`: Configuração de Single Sign-On (SSO) para a conta, incluindo o primeiro nome, sobrenome e endereço de e-mail especificados nas variáveis `var.sso_name`, `var.sso_last_name` e `var.sso_email`, respectivamente.

  Variáveis:
  - `var.region`: A região AWS onde a conta será criada.
  - `var.name`: O nome da conta.
  - `var.email`: O endereço de e-mail associado à conta.
  - `var.environment`: A unidade organizacional (OU) onde a conta será colocada.
  - `var.organization_id`: O ID da unidade organizacional (OU) para onde a conta será movida quando for excluída.
  - `var.tags`: Tags adicionais a serem aplicadas à conta.
  - `var.sso_name`: O primeiro nome do proprietário da conta para a configuração de Single Sign-On (SSO).
  - `var.sso_last_name`: O sobrenome do proprietário da conta para a configuração de Single Sign-On (SSO).
  - `var.sso_email`: O endereço de e-mail do proprietário da conta para a configuração de Single Sign-On (SSO).
*/

provider "aws" {
  region = var.region
}

resource "controltower_aws_account" "account" {
  name                = var.name
  email               = var.email
  organizational_unit = var.environment

  organizational_unit_id_on_delete = var.organization_id

  tags = merge(
    var.tags,
    {
      Product     = "Company"
      Resource    = "Account Factory"
      Service     = "Account Factory"
      Createdby   = "Natália Granato"
      Description = "Account Factory Organization"
    },
  )

  sso {
    first_name = var.sso_name
    last_name  = var.sso_last_name
    email      = var.sso_email
  }
}
