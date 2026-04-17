provider "digitalocean" {
  token = "your-token"
}

resource "digitalocean_kubernetes_cluster" "k8s" {
  name    = "complaint-cluster"
  region  = "blr1"
  version = "1.28.2-do.0"

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-2gb"
    node_count = 2
  }
}
