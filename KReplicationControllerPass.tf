resource "kubernetes_replication_controller" "example" {
  metadata {
    name = "terraform-example"
    namepsace = "demo"
    labels = {
      test = "MyExampleApp"
    }
  }

  spec {
    selector = {
      test = "MyExampleApp"
    }
    template {
      spec {
        automount_service_account_token = false
      }
      metadata {
        labels = {
          test = "MyExampleApp"
        }
        annotations = {
          "key1" = "value1"
        }
      }
    }
  }
}
