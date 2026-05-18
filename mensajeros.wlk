import paquete.*
import vehiculos.*
object roberto {
  var vehiculo = bicicleta

  method pesoPropio() = 90 
  method peso() = self.pesoPropio() + vehiculo.peso()

  method puedeLlamar() = false
  method puedeLlevarPaquete(destino) =  destino.dejarPasarA(self) and paquete.estaPago()

  method cambiarVehiculo(nuevoVehiculo) { vehiculo = nuevoVehiculo }
}

object chuckNorris {
  method peso() = 80 

  method puedeLlamar() = true
  method puedeLlevarPaquete(destino) =  destino.dejarPasarA(self) and paquete.estaPago()
}

object neo {
  var credito = 100

  method peso() = 0
  method puedeLlamar() = 0 < credito
  method puedeLlevarPaquete(destino) =  destino.dejarPasarA(self) and paquete.estaPago()

  method cargarCredito(masCredito) { credito += masCredito }
}