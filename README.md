# Projeto AWS HCL [![Terraform](https://github.com/Tech-Preta/aws-hcl/actions/workflows/terraform.yml/badge.svg)](https://github.com/Tech-Preta/aws-hcl/actions/workflows/terraform.yml)

Este projeto contém a configuração Terraform para provisionar recursos na AWS usando HCL (HashiCorp Configuration Language).

## Diretórios de Recursos Terraform

- [alb](https://github.com/Tech-Preta/aws-hcl/tree/main/alb): Contém a configuração para o Application Load Balancer (ALB) na AWS.
- [control-tower](https://github.com/Tech-Preta/aws-hcl/tree/main/control-tower): Configurações relacionadas ao AWS Control Tower.
- [dynamodb](https://github.com/Tech-Preta/aws-hcl/tree/main/dynamodb): Configuração para provisionar tabelas DynamoDB na AWS.
- [ec2](https://github.com/Tech-Preta/aws-hcl/tree/main/ec2): Contém a configuração para instâncias EC2 na AWS.
- [eksctl](https://github.com/Tech-Preta/aws-hcl/tree/main/eksctl): Configurações relacionadas ao Amazon EKS usando eksctl.
- [s3](https://github.com/Tech-Preta/aws-hcl/tree/main/s3): Configuração para buckets S3 na AWS.

## Como Usar

Certifique-se de ter o Terraform instalado localmente e configurado com suas credenciais AWS. Em seguida, navegue até o diretório do recurso que deseja provisionar e execute os comandos Terraform usuais, como `terraform init`, `terraform plan` e `terraform apply`.

## Contribuição

Contribuições são bem-vindas! Se você encontrar problemas ou tiver melhorias para sugerir, sinta-se à vontade para abrir uma issue ou enviar uma solicitação de pull request.
