provider "google"{
    project     = "cobalt-entropy-382106"

}

resource "google_artifact_registry_repository" "ots-project-repo" {
  location      = "us-central1"
  repository_id = "ots-project-repo"
  description   = "ots-project-repo docker repository"
  format        = "DOCKER"
}
