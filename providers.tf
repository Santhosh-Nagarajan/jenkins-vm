provider "google" {

  project = var.project-id

  region = var.region

  credentials = file("~/${var.credential}")
}
