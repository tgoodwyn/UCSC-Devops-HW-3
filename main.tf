terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_network" "private_network" {
  name = "my_network"
}

resource "docker_image" "web" {
  name = "web"
  build {
    context = "."
  }
}

resource "docker_container" "web" {
  image = docker_image.web.image_id
  name = "web"

  ports {
    internal = "8081"
    external = "12344"
    ip = "127.0.0.1"
  }

  networks_advanced {
    name = docker_network.private_network.id
  }

}
