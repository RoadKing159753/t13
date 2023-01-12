resource "kubernetes_replication_controller" "exampleCont" {
  metadata {
    name      = "terraform-example"
    namespace = "default"
    labels = {
      test = "MyExampleApp"
    }
  }

  spec {
    automount_service_account_token = true
    selector {
      match_labels = {
        test = "MyExampleApp"
      }
    }
  }
}
