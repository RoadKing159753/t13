resource "kubernetes_deployment" "exampleDeploy" {
  metadata {
    name = "terraform-example"
    namespace = "default"
    labels = {
      test = ["MyExampleApp", "Prod_App"]
    }
  }

  spec {
    replicas = 3
    automount_service_account_token = true
    selector {
      match_labels = {
        test = "MyExampleApp"
      }
    }
}
}
