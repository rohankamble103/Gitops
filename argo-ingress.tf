resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
  }
}

resource "kubernetes_manifest" "argocd" {
  manifest = yamldecode(file("${path.module}/manifests/argocd.yaml"))
}

resource "kubernetes_manifest" "nginx_ingress" {
  manifest = yamldecode(file("${path.module}/manifests/nginx-ingress.yaml"))
}
