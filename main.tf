# Definição dos provedores necessários
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# Recurso para demonstração de provisionamento automatizado
resource "local_file" "pipeline_artifact" {
  filename = "infrastructure_status.txt"
  content  = "Infraestrutura provisionada com sucesso via GitHub Actions pipeline!"
}