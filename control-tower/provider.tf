terraform {
  required_providers {
    controltower = {
      source  = "idealo/controltower"
      version = "~> 1.0"
    }
  }
}

provider "controltower" {
  region = "us-east-1"
}
