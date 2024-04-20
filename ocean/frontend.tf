provider "docker" {
  # Configuración del proveedor Docker
}

resource "docker_container" "ionic_frontend" {
  name  = "ionic_frontend"
  image = "nombre_de_tu_imagen_ionic"
  ports {
    external = 8080
    internal = 80
  }
}

