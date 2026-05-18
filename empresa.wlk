object empresa {
  const mensajeros = []

	method contratarMensajero(mensajero) { mensajeros.add(mensajero) }

	method despedirMensajero(mensajero) { mensajeros.remove(mensajero) }

	method despedirATodos() { mensajeros.clear() }

	method esMensajeriaGrande(mensajero) { mensajeros.size() > 2 }

	method puedeSerEntregadoPorPirmerEmpleado(destino) { mensajeros.first().puedeLlevarPaquete(destino) }

	method pesoDelUltimoMensajero() { mensajeros.last().peso()}
}