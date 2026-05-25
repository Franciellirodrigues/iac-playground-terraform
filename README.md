# 🏛️ IaC Playground: Terraform & GitHub Actions

<p align="center">
  <img src="https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white" alt="Terraform Badge">
  <img src="https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white" alt="GitHub Actions Badge">
  <img src="https://img.shields.io/badge/Infrastructure%20as%20Code-4B5563?style=for-the-badge" alt="IaC Badge">
</p>

---

## 📌 About the Project

This repository was developed as a **hands-on laboratory (Playground)** focused on **Infrastructure as Code (IaC)** concepts and deployment automation. The main objective is to demonstrate the continuous integration and continuous deployment (CI/CD) of Terraform configuration files through an end-to-end automated pipeline.

To ensure security, portability, and agility during testing, the laboratory utilizes the Terraform **Local Provider** to simulate the provisioning of infrastructure artifacts in an isolated manner within the pipeline runner environment.

---

## 🚀 Technologies & Tools

* **[Terraform](https://www.terraform.io/)** (v1.x): An open-source orchestration tool that allows defining infrastructure declaratively, making it human-readable and versionable.
* **[GitHub Actions](https://github.com/features/actions)**: A CI/CD platform integrated into the GitHub ecosystem to automate code validation triggers and enforcement.

---

## ⚙️ Pipeline Architecture (CI/CD Workflow)

The automation workflow is configured inside the `.github/workflows/terraform.yml` directory. The pipeline triggers automatically upon every `push` event to the primary branch (`main`), executing the following operational stages:

```mermaid
graph TD
    A[Push to main branch] --> B[Checkout Source Code]
    B --> C[Setup Terraform Environment]
    C --> D[Terraform Init]
    D --> E[Terraform Plan]
    E --> F[Terraform Apply]
