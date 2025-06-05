terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1" # Change this to your preferred AWS region
  access_key = "AKIAXGW37NRCSNHPLEMY"
  secret_key = "SB3EGcjZyobNwWniqm76Gu+g2zI1/h5agJ0nd9kX"
}
