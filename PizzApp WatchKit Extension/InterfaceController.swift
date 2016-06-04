//
//  InterfaceController.swift
//  PizzApp WatchKit Extension
//
//  Created by Gerardo Alfonso Silva Razo on 01/06/16.
//  Copyright © 2016 Gerardo Silva. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var tamano: WKInterfaceLabel!
    @IBOutlet var botonMasa: WKInterfaceButton!
    var tamanoPizza:String=""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        botonMasa.setEnabled(false)
        
        // Configure interface objects here.
    }
    @IBAction func elegirTamano() {
        let tamanoContexto = Valor(t: tamanoPizza, m: "", q: "", i: "")
        pushControllerWithName("identificadorMasa", context: tamanoContexto)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func selectorTamano(value: Float) {
        switch value{
        case 1:
            tamanoPizza="Pizza Chica"
            tamano.setText(tamanoPizza)
            botonMasa.setEnabled(true)
        case 2:
            tamanoPizza="Pizza Mediana"
            tamano.setText(tamanoPizza)
        case 3:
            tamanoPizza="Pizza Grande"
            tamano.setText(tamanoPizza)
        default:
            tamanoPizza="Elige tamaño"
            tamano.setText(tamanoPizza)
            botonMasa.setEnabled(false)
        }
    }
}
