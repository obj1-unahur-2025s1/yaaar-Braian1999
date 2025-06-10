import misiones.*
class BarcoPirata {
    var mision
    const tripulacion = []
    const capacidadMaxima
    method mision() = mision
    method cambiarMision(nuevaMision){mision = nuevaMision}

    method reclutarPirata(unPirata){
        if(mision.cumpleLosRequisitos(unPirata)){
            tripulacion.add(unPirata)
        }
    }

    method cantidadDeTripulantes() = tripulacion.size()
}

class Pirata {
    var property items
    var nivelDeEbriedad
    var property cantidadDeMonedas
    // const items = []
    // method AgregarItem(unItem) {
    //     items.add(unItem)
    // }


}

