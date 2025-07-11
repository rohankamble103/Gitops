Perfect! Here’s your full **README.md** with **all code snippets correctly formatted** using **fenced code blocks** (` ```bash `) inside the markdown, exactly like your example:

---

````markdown
# 🚀 AWS EKS Infrastructure with Argo CD & NGINX Deployment (Terraform + Kubernetes)

This repository automates the complete setup of an **AWS EKS Cluster** along with:
- VPC with Public & Private Subnets
- Route Tables, Internet Gateway (IGW), NAT Gateway
- IAM Roles
- EKS Cluster
- Argo CD for GitOps
- NGINX Ingress Controller
- NGINX Application Deployment

---

## ✅ Prerequisites

1. **Install AWS CLI**  
   [👉 AWS CLI Installation Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

2. **Configure AWS CLI**
```bash
aws configure
````

> Provide:
>
> * AWS Access Key ID
> * AWS Secret Access Key
> * Region (e.g., `us-east-1`)

3. **Install Terraform**
   [👉 Terraform Installation Guide](https://developer.hashicorp.com/terraform/downloads)

4. **Install kubectl**
   [👉 kubectl Installation Guide](https://kubernetes.io/docs/tasks/tools/)

---

## ✅ Infrastructure Setup Instructions

### 1. Clone This Repository:

```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo
```

---

### 2. Deploy AWS Infrastructure Using Terraform:

Navigate to the Terraform directory:

```bash
cd aws
```

Run Terraform:

```bash
terraform init
terraform plan
terraform apply
```

> This will automatically:
>
> * Create **VPC** (2 Public + 2 Private Subnets)
> * Setup **Route Tables, IGW, NAT Gateway**
> * Provision **IAM Roles** & **EKS Cluster**

---

### 3. Configure kubectl to Access EKS:

```bash
aws eks update-kubeconfig --region us-east-1 --name my-eks-cluster
```

---

## ✅ Deploy Argo CD & Ingress Controller

Navigate to the Argo CD directory:

```bash
cd ../argocd
```

### Install Argo CD:

```bash
kubectl apply -f argocd-install.yaml -n argocd
```

### Install Ingress Controller:

```bash
kubectl apply -f ingress-nginx.yaml
```

### Deploy Ingress Resource:

```bash
kubectl apply -f ingress.yaml
```

---

### ✅ Access Argo CD & NGINX App:

1. Get your Load Balancer URL from AWS Console → EC2 → Load Balancers.
2. Access:

   * Argo CD: `https://<loadbalancer-url>/`
   * NGINX App: `https://<loadbalancer-url>/app`

---

## ✅ Deploy NGINX Application

Navigate to the NGINX App directory:

```bash
cd ../nginx-new
```

Apply NGINX Deployment & Service:

```bash
kubectl apply -f nginx-service.yaml -n argocd
kubectl apply -f nginx.yaml -n argocd
```

---

## ✅ Summary:

This project automates:

* ✅ AWS EKS Cluster Creation
* ✅ Argo CD GitOps Setup
* ✅ Ingress Controller for Routing
* ✅ NGINX App Deployment

---

## ✅ Notes:

* You can modify region & cluster name as needed in Terraform files or `update-kubeconfig` command.
* Make sure your IAM user has proper permissions.

---

## ✅ License:

This project is released under the [MIT License](LICENSE).

---

**🚀 Happy Cloud Automating!**

```

---

### ✅ ✅ You can now directly copy-paste this into your `README.md` and GitHub will fully preserve the formatting with proper preview.

Let me know if you'd like me to:
- Auto-insert your repo URL
- Add Terraform badge, architecture diagram, or Argo CD links!
```

