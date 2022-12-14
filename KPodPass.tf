resource "kubernetes_pod" "examplePods" {
  metadata {
    name      = "terraform-example"
    namespace = "main"
    labels = {
      test = "MyExampleApp"
    }
  }

  spec {
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
