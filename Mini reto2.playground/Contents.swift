//  Mini reto2: Un velocímetro de un automóvil digital

import UIKit

enum Velocidades: Int {
    case Apagado = 0,
    VelocidadBaja = 20,
    VelocidadMedia = 50,
    VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad: Velocidades
    
    init () {
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String) {
        
        var velocidadResultado: String = ""
        switch self.velocidad {
            case .Apagado:
                self.velocidad = .VelocidadBaja
                velocidadResultado = "Velocidad Baja"
            
            case .VelocidadBaja, .VelocidadAlta:
                self.velocidad = .VelocidadMedia
                velocidadResultado = "Velocidad Media"
            
            case .VelocidadMedia:
                self.velocidad = .VelocidadAlta
                velocidadResultado = "Velocidad Alta"
            
        }
        
        return (self.velocidad.rawValue, velocidadResultado)
    }
    
}

var auto = Auto()

var velocidadEnCadena: String = "Apagado"
var velocidadActual: Int = auto.velocidad.rawValue

for iteracion in 1...20 {
    
    print("\(velocidadActual), \(velocidadEnCadena)")
    (velocidadActual, velocidadEnCadena) = auto.cambioDeVelocidad()
}



