resource "kubernetes_deployment" "exampleDeploys" {
  metadata {
    name = "terraform-example"
    namespace = "main"
    labels = {
      test = ["MyExampleApp", "Prod_App"]
    }
  }

  spec {
    replicas = 3
    automount_service_account_token = false
    security_context {
    }
    selector {
      match_labels = {
        test = "MyExampleApp"
      }
    }
}
}
