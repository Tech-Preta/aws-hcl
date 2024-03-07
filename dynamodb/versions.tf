/*
    Este arquivo Terraform especifica a versão necessária do Terraform e a versão do provedor AWS necessária.

    Versão do Terraform:
    - O parâmetro required_version especifica a versão mínima do Terraform necessária para executar esta configuração. Neste caso, está definido como ">= 0.13.0", o que significa que é necessária a versão 0.13.0 ou superior do Terraform.

    Versão do Provedor:
    - O bloco required_providers especifica a versão necessária do provedor AWS. Ele garante que a configuração seja compatível com a versão do provedor especificada. Neste caso, a versão do provedor AWS está definida como ">= 3.69", o que significa que é necessária a versão 3.69 ou superior do provedor AWS.

    Nota: Certifique-se de atualizar a versão do provedor de acordo com seus requisitos específicos.

    Para obter mais informações sobre versões do Terraform e requisitos do provedor, consulte a documentação do Terraform:
    - Restrições de Versão do Terraform: https://www.terraform.io/docs/configuration/version-constraints.html
    - Restrições de Versão do Provedor: https://www.terraform.io/docs/configuration/providers.html#provider-version-constraints
*/
/*
    This Terraform file specifies the required version of Terraform and the required provider version for the AWS provider.

    Terraform Version:
    - The required_version parameter specifies the minimum version of Terraform required to run this configuration. In this case, it is set to ">= 0.13.0", meaning Terraform version 0.13.0 or higher is required.

    Provider Version:
    - The required_providers block specifies the required version of the AWS provider. It ensures that the configuration is compatible with the specified provider version. In this case, the AWS provider version is set to ">= 3.69", meaning AWS provider version 3.69 or higher is required.

    Note: Make sure to update the provider version according to your specific requirements.

    For more information on Terraform versions and provider requirements, refer to the Terraform documentation:
    - Terraform Version Constraints: https://www.terraform.io/docs/configuration/version-constraints.html
    - Provider Version Constraints: https://www.terraform.io/docs/configuration/providers.html#provider-version-constraints
*/
terraform {
  required_version = ">= 0.13.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.69"
    }
  }
}
