terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 3.0"
    }
  }
}

provider "digitalocean" {
  token = "tu_token_de_api"
}

resource "digitalocean_droplet" "falcons" {
  name   = "falcons-droplet"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  image  = "ubuntu-20-04-x64"
}
