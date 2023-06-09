output "instance-id" {
  value = google_compute_instance.jenkins_vm.instance_id
}

output "public-ip" {
  value = google_compute_instance.jenkins_vm.hostname
}