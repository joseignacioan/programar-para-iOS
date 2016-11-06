//
//  Datos.swift
//  Hamburguesas
//
//  Created by Virginia García Tomé on 6/11/16.
//  Copyright © 2016 JI Arandilla. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises {
    let paises: [String] = ["Alemania", "Australia", "Austria", "Bélgica", "Canadá", "Dinamarca", "España", "Finlandia", "Francia", "Holanda", "Irlanda", "Italia", "Japón", "Luxemburgo", "México", "Nueva Zelanda", "Noruega", "Portugal", "Suecia", "Suiza"]
    
    func obtenPais() -> String {
        return paises[Int(arc4random()) % paises.count]
    }
}

class ColeccionDeHamburguesas {
    let hamburguesas: [String] = ["McDonald's Big Mac", "McDonald's CBO", "McDonald's McPollo", "McDonald's Cuarto de Libra con Queso", "McDonald's McRoyal de Luxe", "McDonald's Crispy BBQ", "McDonald's Big Double Cheese", "McDonald's Big Chicken Supreme", "McDonald's Chicken Burguer BBQ", "McDonald's Grand McExtrme", "Burger King Whopper", "Burger King Steakhouse", "Burger King Big King", "Burger King Doble Cheese Bacon", "Burger King Cheesburger", "Burger King Steakhouse César", "Burger King Long Nacho", "Burger King Long Texas", "Burger King Doble Texas", "Burger King Long Chicken"]
    
    func obtenHamburguesa() -> String {
        return hamburguesas[Int(arc4random()) % hamburguesas.count]
    }
}

struct Colores {
    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
                    
                    UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
                    
                    UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
                    
                    UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
                    
                    UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
                    
                    UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
                    
                    UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
                    
                    UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    
    func devuelveColorAleatorio() -> UIColor {
        return colores[Int(arc4random()) % colores.count]
    }
}
