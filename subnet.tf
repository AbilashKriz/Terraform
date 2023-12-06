resource "google_compute_subnetwork" "private" {
    ip_cidr_range = "10.0.0.0/18"
    name = "private"
    network = google_compute_network.main.id
    private_ip_google_access = true
    region = "us-central1"

    secondary_ip_range  {
      ip_cidr_range = "10.48.0.0/14"
      range_name = "k8s-pod-range"
    }

    secondary_ip_range {
        ip_cidr_range = "10.53.0.0/20"
        range_name = "k8s-service-range"
    } 
}