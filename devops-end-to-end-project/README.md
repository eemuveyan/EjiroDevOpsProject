# DevOps End-to-End Project

This project demonstrates a full DevOps pipeline for a microservices application.

## Components
- Infrastructure: Terraform + AWS (VPC, EKS)
- Containers: Docker
- Orchestration: Kubernetes (EKS)
- CI/CD: GitHub Actions
- Configuration Management: Ansible
- Monitoring & Logging: Prometheus, Grafana, Loki (via Helm)

## Setup Instructions

1. **Provision Infrastructure**
```bash
cd terraform
terraform init
terraform apply
```

2. **Configure EKS Access**
```bash
aws eks update-kubeconfig --region us-east-1 --name devops-cluster
```

3. **Push code to GitHub** — the CI/CD pipeline will trigger automatically.

4. **Access Services**
Get LoadBalancer IPs using:
```bash
kubectl get svc
```

5. **Monitoring**
```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install monitoring prometheus-community/kube-prometheus-stack
kubectl port-forward svc/monitoring-grafana 3000:80
```

Login to Grafana with `admin/admin` and configure dashboards.