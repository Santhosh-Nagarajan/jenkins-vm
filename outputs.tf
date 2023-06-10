output "instance-id" {
  value = google_compute_instance.example.instance_id
}

output "public-ip" {
  value = google_compute_instance.example.hostname
}