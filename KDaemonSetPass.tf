resource "kubernetes_daemonset" "example" {
  metadata {
    name      = "terraform-example"
    namespace = "something"
    labels = {
      test = "MyExampleApp"
    }
  }

  spec {
    template {
      spec {
        automount_service_account_token = false
      }
    }
  }
}       
       
