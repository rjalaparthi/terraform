provider "aws" {
  # Configuration options
  region = "us-east-1"
}

provider "aws" {
  region = "us-west-1"
  alias = "west"
}

provider "github" {
  # Configuration options
    token = "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"
}