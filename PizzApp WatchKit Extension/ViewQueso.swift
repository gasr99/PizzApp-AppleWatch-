//
//  ViewQueso.swift
//  PizzApp
//
//  Created by Gerardo Alfonso Silva Razo on 01/06/16.
//  Copyright © 2016 Gerardo Silva. All rights reserved.
//

import WatchKit
import Foundation


class ViewQueso: WKInterfaceController {
    @IBOutlet var queso: WKInterfaceLabel!
    
    @IBOutlet var botonIngredientes: WKInterfaceButton!
    var tamanoQueso:String=""
    var masaQueso:String=""
    var quesoQueso:String=""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        botonIngredientes.setEnabled(false)
        let c=context as! Valor
        tamanoQueso=c.valorTamano
        masaQueso=c.valorMasa
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func elegirQueso() {
        let quesoContexto = Valor(t: tamanoQueso, m: masaQueso, q: quesoQueso, i: "")
        pushControllerWithName("identificadorIngredientes", context: quesoContexto)
    }
    @IBAction func selectorQueso(value: Float) {
        switch value{
        case 1:
            quesoQueso="Sin queso"
            queso.setText(quesoQueso)
            botonIngredientes.setEnabled(true)
        case 2:
            quesoQueso="Queso mozzarella"
            queso.setText(quesoQueso)
        case 3:
            quesoQueso="Queso cheddar"
            queso.setText(quesoQueso)
        case 4:
            quesoQueso="Queso parmesano"
            queso.setText(quesoQueso)
        default:
            quesoQueso="Elige queso"
            queso.setText(quesoQueso)
            botonIngredientes.setEnabled(false)
        }
    }
}
