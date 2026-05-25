# 🏛️ IaC Playground: Terraform & GitHub Actions

<p align="center">
  <img src="https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white" alt="Terraform Badge">
  <img src="https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white" alt="GitHub Actions Badge">
  <img src="https://img.shields.io/badge/Infrastructure%20as%20Code-4B5563?style=for-the-badge" alt="IaC Badge">
</p>

---

## 📌 Sobre o Projeto

Este repositório foi desenvolvido como um **laboratório prático (Playground)** focado em conceitos de **Infraestrutura como Código (IaC)** e automação de deploys. O principal objetivo é demonstrar a integração contínua (CI/CD) de arquivos de configuração do Terraform através de uma esteira automatizada de ponta a ponta.

Para garantir a segurança, portabilidade e agilidade nos testes, o laboratório utiliza o **Provedor Local** do Terraform para simular o provisionamento de artefatos de infraestrutura de forma isolada dentro do ambiente da esteira.

---

## 🚀 Tecnologias e Ferramentas

* **[Terraform](https://www.terraform.io/)** (v1.x): Ferramenta open-source de orquestração que permite definir a infraestrutura de forma declarativa, legível e versionável.
* **[GitHub Actions](https://github.com/features/actions)**: Plataforma de CI/CD integrada ao ecossistema GitHub para automação dos gatilhos de validação e aplicação do código.

---

## ⚙️ Arquitetura da Esteira (CI/CD Pipeline)

O workflow de automação está configurado no diretório `.github/workflows/terraform.yml`. A esteira é disparada automaticamente a cada `push` realizado na branch principal (`main`), executando os seguintes estágios:

```mermaid
graph TD
    A[Push na branch main] --> B[Checkout do Código]
    B --> C[Setup do ambiente Terraform]
    C --> D[Terraform Init]
    D --> E[Terraform Plan]
    E --> F[Terraform Apply]
