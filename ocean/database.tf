provider "docker" {
  # Configuración del proveedor Docker
}

resource "docker_container" "mongodb_database" {
  name  = "mongodb_database"
  image = "nombre_de_tu_imagen_mongodb"
  ports {
    external = 27017
    internal = 27017
  }
}

