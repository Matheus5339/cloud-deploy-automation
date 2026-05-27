# Cloud Deploy Automation

![CI/CD](https://github.com/Matheus5339/cloud-deploy-automation/actions/workflows/deploy.yml/badge.svg)

Projeto DevOps com CI/CD, Docker e automação de deploy multi-ambiente.

## 🚀 Tecnologias
- Python (FastAPI)
- Docker
- GitHub Actions
- Bash Scripts

## ⚙️ Funcionalidades
- API REST com FastAPI
- Containerização com Docker
- Pipeline CI/CD automatizado
- Deploy em staging e production
- Automação com script Bash

## 🔁 Pipeline
- Teste automático no push
- Build de imagem Docker
- Deploy por ambiente (staging / production)

## 📦 Como rodar localmente

```bash
pip install -r requirements.txt
uvicorn app.main:app --reload