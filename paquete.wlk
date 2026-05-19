object paquete {
  var estaPago = false

  method estaPago() = estaPago
  method serPagado() { estaPago = true }
  method puedeSerEntregado(mensajero, destino) = mensajero.puedeLlevarPaquete(destino) and self.estaPago()
}

object paquetito {
  var estaPago = true

  method estaPago() = estaPago
  method puedeSerEntregado(mensajero) = true
}

object paquetonViajero {
  const destinos = []
  var pagadoHastaAhora = 0

  method precio() = 50 + (100 * destinos.size())

  method estaPago() = self.precio() == pagadoHastaAhora 
  method pagarCuota(mento) { pagadoHastaAhora += mento }

  method puedeSerEntregado(mensajero) = (destinos.size() == self.aDondeIr(mensajero).size()) and self.estaPago()
  method aDondeIr(mensajero) = destinos.filter({ c => c.puedeLlevarPaquete(mensajero) })
}

