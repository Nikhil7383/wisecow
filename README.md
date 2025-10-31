# 🐮 Practical 1

## 📘 Overview
Wisecow is a simple Bash-based web server that displays random quotes using **fortune** and **cowsay**.  
This project demonstrates **Docker**, **Kubernetes**, and **GitHub Actions CI** setup as part of DevOps Practical 1.

---

## 🚀 Steps Implemented
1. **Dockerfile** – Containerized the bash app.
2. **Docker Hub Push** – Image hosted at `nikhil8008/wisecow`.
3. **Kubernetes Deployment** – `deployment.yaml` and `service.yaml` for Wisecow.
4. **Minikube Access** – Accessible via `minikube service wisecow-service`.
5. **CI Workflow** – `.github/workflows/ci.yml` builds and pushes image automatically.

---

## 🧠 Technologies Used
- Docker
- Kubernetes (Minikube)
- GitHub Actions
- Bash scripting
- Fortune + Cowsay utilities

---

## 🖥️ How to Run
```bash
# Clone repo
git clone https://github.com/nikhil8008/wisecow.git
cd wisecow

# Build and run locally
docker build -t wisecow .
docker run -p 4499:4499 wisecow

# Deploy on Kubernetes
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
minikube service wisecow-service

---

## 📸 Output Screenshot
<img width="1914" height="890" alt="image" src="https://github.com/user-attachments/assets/2150bd93-0a2a-4212-97aa-3e7d26235596" />

