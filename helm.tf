resource "helm_release" "spinnaker" {
  name  = "spinnaker"
  chart = "stable/spinnaker"
  timeout = 600

  depends_on = ["kubernetes_cluster_role_binding.tiller"]
}
