# Projeto AWS HCL

Este projeto contém a configuração Terraform para provisionar recursos na AWS usando HCL (HashiCorp Configuration Language).

## Diretórios de Recursos Terraform

- [alb](alb/README.md): Contém a configuração para o Application Load Balancer (ALB) na AWS.
- [control-tower](control-tower/README.md): Configurações relacionadas ao AWS Control Tower.
- [dynamodb](dynamodb/README.md): Configuração para provisionar tabelas DynamoDB na AWS.
- [ec2](ec2/README.md): Contém a configuração para instâncias EC2 na AWS.
- [eksctl](eksctl/README.md): Configurações relacionadas ao Amazon EKS usando eksctl.
- [s3](s3/README.md): Configuração para buckets S3 na AWS.

Cada diretório contém sua própria documentação específica com detalhes sobre a configuração e como usar os recursos provisionados.

## Como Usar

Certifique-se de ter o Terraform instalado localmente e configurado com suas credenciais AWS. Em seguida, navegue até o diretório do recurso que deseja provisionar e execute os comandos Terraform usuais, como `terraform init`, `terraform plan` e `terraform apply`.

## Contribuição

Contribuições são bem-vindas! Se você encontrar problemas ou tiver melhorias para sugerir, sinta-se à vontade para abrir uma issue ou enviar uma solicitação de pull request.
