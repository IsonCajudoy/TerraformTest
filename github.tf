
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = "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"
}


resource "github_repository" "testrepo" {
  name        = "TerraformTest"
  description = "test"

  visibility = "public"

}
