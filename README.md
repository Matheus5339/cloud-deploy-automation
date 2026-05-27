Cloud Deploy Automation

![CI/CD](https://github.com/Matheus5339/cloud-deploy-automation/actions/workflows/deploy.yml/badge.svg)

CI/CD Pipeline

Projeto DevOps desenvolvido com FastAPI, Docker, GitHub Actions e automação de deploy com Bash Script.

---

Tecnologias Utilizadas
Python 3.11  
FastAPI  
Docker  
GitHub Actions  
Bash Script  

---

Funcionalidades
API REST com FastAPI  
Health Check  
Container Docker  
CI/CD com GitHub Actions  
Deploy automatizado por ambiente (staging e production)  
Automação de build com script Bash  

---

Endpoints

Root  
GET /

Retorna status da aplicação

Health Check  
GET /health

Retorna status da aplicação e uptime

---

Rodando localmente

Criar ambiente virtual
python -m venv venv

Ativar ambiente virtual

Windows:
venv\Scripts\activate

Linux/Mac:
source venv/bin/activate

---

Instalar dependências
pip install -r requirements.txt

---

Rodar aplicação
uvicorn app.main:app --reload

Acesso:
http://localhost:8000
http://localhost:8000/health
http://localhost:8000/docs

---

Rodando com Docker

Build da imagem
docker build -t cloud-deploy-automation .

Rodar container
docker run -p 8000:8000 cloud-deploy-automation

---

CI/CD

O projeto utiliza GitHub Actions para:

- Execução automática de testes básicos
- Build da imagem Docker
- Deploy por ambiente (staging e production)
- Automação de pipeline a cada push

Fluxo do pipeline:

Push no GitHub  
↓  
GitHub Actions  
↓  
Testes  
↓  
Build Docker  
↓  
Deploy staging (develop)  
↓  
Deploy production (main)

---

Deploy

Deploy automatizado via GitHub Actions (simulado com Docker containers por ambiente).

---

Autor
Matheus Pereira