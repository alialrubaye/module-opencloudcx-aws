# Developed by RIVA Solutions Inc 2022.  Authorized Use Only

resource "kubernetes_namespace" "extra" {
  count = length(var.additional_namespaces)
  metadata {
    name = var.additional_namespaces[count.index]
  }

  depends_on = [
    module.eks,
  ]
}

resource "kubernetes_namespace" "spinnaker" {
  metadata {
    name = "spinnaker"
  }

  depends_on = [
    module.eks,
  ]
}

resource "kubernetes_namespace" "ingress-nginx" {
  metadata {
    name = "ingress-nginx"
  }

  depends_on = [
    module.eks,
  ]
}

# resource "kubernetes_namespace" "dashboard" {
#   metadata {
#     name = "dashboard"
#   }

#   depends_on = [
#     module.eks,
#   ]
# }

resource "kubernetes_namespace" "jenkins" {
  metadata {
    name = "jenkins"
  }

  depends_on = [
    module.eks,
  ]
}

resource "kubernetes_namespace" "cert-manager" {
  metadata {
    name = "cert-manager"
  }

  depends_on = [
    module.eks,
  ]
}

resource "kubernetes_namespace" "opencloudcx" {
  metadata {
    name = "opencloudcx"
  }

  depends_on = [
    module.eks,
  ]
}

