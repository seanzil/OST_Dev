provider "google"{
    project     = "cobalt-entropy-382106"

}

resource "google_artifact_registry_repository" "ots-project-repo-test" {
  location      = "us-central1"
  repository_id = "ots-project-repo-test"
  description   = "example docker repository"
  format        = "DOCKER"
}

terraform {
  backend "gcs" {
    bucket  = "terraform-backend-bucket-1123"
    prefix  = "terraform/state"
  }
}
