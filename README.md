# infra-prova-pratica

Atividade Prática 01 – Infraestrutura de TI  
**Aluno:** Arthur de Holanda Duarte Oliveira  
**Turma:** 28M4A  
**Data:** 25/10/2025  

---

## Descrição
Este projeto consiste na criação, conteinerização e deploy de uma API Flask em Kubernetes (Minikube), além do provisionamento de infraestrutura utilizando Terraform e LocalStack. O objetivo é demonstrar o fluxo completo de desenvolvimento, conteinerização, orquestração e provisionamento de recursos em nuvem local.

---

## Estrutura do Projeto
infra-prova-pratica/
├── api/
│   ├── app.py           # Código da API Flask
│   ├── requirements.txt # Dependências Python
│   └── Dockerfile       # Dockerfile para conteinerização
├── k8s/
│   ├── deployment.yaml  # Manifesto de deployment do Kubernetes
│   └── service.yaml     # Manifesto de serviço do Kubernetes
├── terraform/
│   ├── main.tf          # Configuração principal do Terraform
│   ├── variables.tf     # Declaração de variáveis
│   └── outputs.tf       # Saídas definidas para a infraestrutura
└── README.md            # Este arquivo

---

## Funcionalidades
- API Flask simples para testes de deploy.  
- Conteinerização da aplicação utilizando Docker.  
- Deploy em cluster Kubernetes local via Minikube.  
- Provisionamento de recursos locais simulando AWS com Terraform + LocalStack.

---

## Tecnologias Utilizadas
- Python 3 + Flask  
- Docker  
- Kubernetes (Minikube)  
- Terraform  
- LocalStack  

---

## Autor
**Arthur de Holanda Duarte Oliveira**  
Turma: 28M4A  
Data: 25/10/2025
