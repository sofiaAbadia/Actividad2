import UIKit

enum Velocidades : Int {
    case Apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        velocidad = Velocidades(velocidadInicial : .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        var actual: Int
        var mensaje : String = ""
        switch velocidad {
        case .Apagado:
            actual = self.velocidad.rawValue
            mensaje = "Apagado"
            self.velocidad = Velocidades.velocidadBaja
            
        case .velocidadBaja:
            actual = self.velocidad.rawValue
            mensaje = "Velocidad Baja"
            self.velocidad = Velocidades.velocidadMedia
            
        case .velocidadMedia:
            actual = self.velocidad.rawValue
            mensaje = "Velocidad Media"
            self.velocidad = Velocidades.velocidadAlta
            
        case .velocidadAlta:
            actual = self.velocidad.rawValue
            mensaje = "Velocidad Alta"
            self.velocidad = Velocidades.velocidadMedia
        }
        return (actual, mensaje)
    }
}

var auto = Auto()

for i in 1...20 {
    let resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual) \(resultado.velocidadEnCadena)")
}
