object paquete {
  var estaPago = false

  method estaPago() = estaPago
  method serPagado() { estaPago = true }
  method puedeSerEntregado(mensajero, destino) = mensajero.puedeLlevarPaquete(destino) and self.estaPago()
}