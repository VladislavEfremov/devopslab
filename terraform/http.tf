resource "google_compute_instance" "webserver" {
  name = "http-server"
  tags = ["http-server"]
  machine_type = "g1-small"
  zone = "europe-west1-b"
  boot_disk {
    initialize_params {
      image = "http-server-1598775917"
    }
  }
  network_interface {
    network = "default"
  access_config {}
  }
  metadata = {
    sshKeys = "http:${file("~/.ssh/http.pub")}"
  }
}