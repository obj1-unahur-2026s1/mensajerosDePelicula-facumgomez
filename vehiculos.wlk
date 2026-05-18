object bicicleta {
  method peso() = 5 
}

object camion {
  var cantidadAcoplados = 1

  method peso() = 500 * cantidadAcoplados 
  method cambiarCantAcoplados(cantidad) { cantidadAcoplados = cantidad }
}