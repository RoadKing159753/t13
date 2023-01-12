resource "kubernetes_service_account" "exampleAccount" {
  metadata {
    name = "terraform-example"
    labels = {
      test = "MyExampleApp"
    }
  }
  automount_service_account_token = false
  labels = {
      test = "MyExampleApp"
    }
}
