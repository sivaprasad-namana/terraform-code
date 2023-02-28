terraform {
  required_providers {
    docker = {
        source  = "kreuzwerker/docker"
    #   version = "~> 2.13.0"
        version = "3.0.1"
    }
  }
}

provider "docker" {}
