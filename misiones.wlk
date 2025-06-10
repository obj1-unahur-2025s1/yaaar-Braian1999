import barcosYPiratas.*
class Misiones {
    method tieneSufisienteTripulacion(unBarco) = unBarco.cantidadDeTripulantes() > unBarco.capacidadMaxima() * 0.9
}

class BusquedaDeTesoro inherits Misiones{
    method cumpleLosRequisitos(unPirata) = self.tieneLosItemsNesesario(unPirata) and self.tieneSufisientesMonedas(unPirata)
    method tieneLosItemsNesesario(unPirata) =  ["brujula", "mapa", "botellaDeGrog"].all({i=> unPirata.items().contains(i)})
    method tieneSufisientesMonedas(unPirata) = unPirata.cantidadDeMonedas() < 5

    method elBarcoPuedeRealizarLaMision(unBarco) = unBarco.tripulacion().any({x=>x.contains("llaveDeCofre")})
}

class ConvertirseEnLeyenda inherits Misiones {
    var itemObligatorio
    // method cumpleLosRequisitos(unPirata) = 
    method tieneLosItemsNesesario(unPirata) = unPirata.items().size() >= 10 and unPirata.items().contains(itemObligatorio)

}

class Saqueo {
    method tieneLosItemsNesesario(unPirata) = unPirata.cantidadDeMonedas() < monedasPromedios.promedioDeMonedas()

    
}

object monedasPromedios {
    var property promedioDeMonedas = 100
}