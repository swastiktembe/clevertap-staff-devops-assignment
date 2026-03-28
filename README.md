# CleverTap - Staff DevOps Engineer Assignment

## Overview
This repository contains a production-grade design and partial implementation for:
- Multi-region EKS infrastructure
- Standardized Terraform modules
- CI/CD pipeline with promotion strategy
- Observability and incident response system
- Cost optimization and FinOps framework

---

## Key Design Principles
- Infrastructure as Code (Terraform-first)
- Multi-region resilience
- Security by default (IRSA, private clusters)
- Cost optimization via Spot + rightsizing
- SLO-driven observability

---

## Architecture Highlights

### Infrastructure
- Multi-region EKS (ap-south-1, us-east-1)
- Standardized VPC design
- Transit Gateway for inter-region communication (control plane only)

### CI/CD
- GitHub Actions pipeline
- Environment promotion gates
- Canary deployments using Argo Rollouts

### Observability
- Metrics: Prometheus (Amazon Managed Prometheus)
- Logs: CloudWatch + OpenSearch
- Traces: OpenTelemetry + X-Ray
- Alerts: SLO-based 

---

## Cost Optimization Target
- Current: $420K/month
- Target Reduction: 25–30%
- Strategy:
  - Spot instances
  - Savings Plans
  - Data transfer optimization

---

## Repository Structure
(Explain folders briefly)

---

## How to Deploy
(terraform steps)

---

## Assumptions
- AWS Organizations in place
- Separate accounts per environment
- Kubernetes version XX
