# Infrastructure Architecture

## Multi-Region Strategy
- Active-active deployment across:
  - ap-south-1
  - us-east-1

- Each region:
  - Independent EKS cluster
  - Isolated VPC

## Networking
- Transit Gateway used instead of VPC peering

### Why Transit Gateway?
- Scales better than mesh peering
- Centralized control
- Easier to manage multi-region expansion

---

## EU Expansion Strategy

### Requirement:
EU data must not leave eu-west-1

### Solution:
- Dedicated EU cluster in eu-west-1
- No cross-region data plane communication
- Central CI/CD control plane

### Enforcement:
- IAM SCP policies
- Region-restricted roles
- CI/CD pipeline validation checks

---

## Security
- Private EKS API endpoints
- IRSA for pod-level IAM
- Secrets managed via AWS Secrets Manager

I had also recently created and deliverd AWS microservice that's supposed to handle 5M requests daily. i can walk through during the interview
