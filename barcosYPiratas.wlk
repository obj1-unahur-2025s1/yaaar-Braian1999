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
    method esVulnerable(barcoAtacante) = self.cantidadDeTripulantes() < barcoAtacante.cantidadDeTripulantes() / 2
    // method tieneUnPirarataPasadoDeGrog() = 
}

class Pirata {
    var property items
    var nivelDeEbriedad
    var property cantidadDeMonedas
    method estaPasadoDeGrog() = nivelDeEbriedad >= 90
    // const items = []
    // method AgregarItem(unItem) {
    //     items.add(unItem)
    // }
}

// class BarcoPirata {
//     var mision
//     const tripulacion = []
//     const capacidadMaxima
//     method mision() = mision
//     method cambiarMision(nuevaMision){mision = nuevaMision}

//     method reclutarPirata(unPirata){
//         if(mision.cumpleLosRequisitos(unPirata)){
//             tripulacion.add(unPirata)
//         }
//     }

//     method cantidadDeTripulantes() = tripulacion.size()
// }

// class Pirata {
//     var property items
//     var nivelDeEbriedad
//     var property cantidadDeMonedas
//     // const items = []
//     // method AgregarItem(unItem) {
//     //     items.add(unItem)
//     // }
// }