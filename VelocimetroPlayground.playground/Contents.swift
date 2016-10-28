//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Velocidades:Int{
    case Apagado = 0,
    VelocidadBaja = 20,
    VelocidadMedia = 50,
    VelocidadAlta = 120
    
    init(VelocidadInicial: Velocidades){
        
        switch VelocidadInicial {
        case .Apagado:
            self = .Apagado
        case .VelocidadMedia:
            self = .VelocidadMedia
        case .VelocidadAlta:
            self = .VelocidadAlta
        case .VelocidadBaja:
            self = .VelocidadBaja
        }
    }
}

class Auto {
    
    var velocidad:Velocidades
    
    init(){
        self.velocidad = Velocidades(VelocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual:Int,velocidadEnCadena:String){
        
        switch self.velocidad {
        case .Apagado:
            let result = (self.velocidad.rawValue,"Apagado")
            self.velocidad = Velocidades.VelocidadBaja
            return result
        case .VelocidadBaja:
            let result = (self.velocidad.rawValue,"Velocidad Baja")
            self.velocidad = Velocidades.VelocidadMedia
            return result
        case .VelocidadMedia:
            let result = (self.velocidad.rawValue,"Velocidad Media")
            self.velocidad = Velocidades.VelocidadAlta
            return result
        case .VelocidadAlta:
            let result = (self.velocidad.rawValue,"Velocidad Alta")
            self.velocidad = Velocidades.VelocidadMedia
            return result
        }
    }
}

var auto: Auto = Auto()

for i in 1...20{
    let res = auto.cambioDeVelocidad()
    print("\(res.actual),\(res.velocidadEnCadena)")
}




