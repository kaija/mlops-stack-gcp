terraform {
  // The `backend` block below configures the gcs backend
  // (docs: https://developer.hashicorp.com/terraform/language/settings/backends/gcs)
  // for storing Terraform state in an GCP gcs bucket. You can run the setup scripts in mlops-setup-scripts/terraform to
  // provision the gcs bucket referenced below and store appropriate credentials for accessing the bucket from CI/CD.
  backend "gcs" {
    bucket         = "mlops-gcp-tfstate"
    key            = "staging.terraform.tfstate"
    location       = "us-west1"
  }
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
  }
}
