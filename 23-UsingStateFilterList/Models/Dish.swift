//
//  Dish.swift
//  23-UsingStateFilterList
//
//  Created by Diego Salazar Arp on 13-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation
import SwiftUI

struct Dish: Identifiable {
    
    let id = UUID()
    let name: String
    let imageURL: String
    let isSpicy: Bool
    
}


extension Dish{
    
    static func all() -> [Dish]{
        
        return [
        
        Dish(name: "Tacos", imageURL: "tacos", isSpicy: true),
        Dish(name: "Enchiladas", imageURL: "enchiladas", isSpicy: true),
        Dish(name: "Torta Ahogada", imageURL: "torta-ahogada", isSpicy: true),
        Dish(name: "Spaguetti", imageURL: "spaghetti", isSpicy: false),
        Dish(name: "Buddae Jjigae", imageURL: "budae-jiggae", isSpicy: true),
        Dish(name: "Humitas", imageURL: "humita", isSpicy: false),
        Dish(name: "Pastel de Choclo", imageURL: "pastel-choclo", isSpicy: false),
        Dish(name: "Sopa Thai", imageURL: "sopa-thai", isSpicy: true),
        Dish(name: "Pechuga de Pollo", imageURL: "pechuga-pollo", isSpicy: false),


        ]

    }
}
