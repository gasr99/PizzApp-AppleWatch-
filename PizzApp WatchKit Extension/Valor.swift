//
//  Valor.swift
//  PizzApp
//
//  Created by Gerardo Alfonso Silva Razo on 01/06/16.
//  Copyright © 2016 Gerardo Silva. All rights reserved.
//

import WatchKit

class Valor: NSObject {
    
    var valorTamano:String=""
    var valorMasa:String=""
    var valorQueso:String=""
    var valorIngredientes:String=""
    
    init(t:String, m:String, q:String,i:String) {
        valorTamano=t
        valorMasa=m
        valorQueso=q
        valorIngredientes=i
    }
}
