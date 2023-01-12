resource "kubernetes_replica_set" "example" {
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
        security_context{
        }
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

