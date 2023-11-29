provider "docker" {
  # Configuración del proveedor Docker
}

resource "docker_container" "node_backend" {
  name  = "node_backend"
  image = "nombre_de_tu_imagen_node"
  ports {
    external = 3000
    internal = 3000
  }
}

