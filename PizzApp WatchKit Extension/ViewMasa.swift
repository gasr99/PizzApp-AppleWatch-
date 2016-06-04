//
//  ViewMasa.swift
//  PizzApp
//
//  Created by Gerardo Alfonso Silva Razo on 01/06/16.
//  Copyright © 2016 Gerardo Silva. All rights reserved.
//

import WatchKit
import Foundation


class ViewMasa: WKInterfaceController {

    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var botonQueso: WKInterfaceButton!
    var tamanoMasa:String=""
    var tipoMasa:String=""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        botonQueso.setEnabled(false)
        let c = context as! Valor
        tamanoMasa = c.valorTamano
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
    
    @IBAction func elegirMasa() {
        let masaContexto = Valor(t: tamanoMasa, m: tipoMasa, q: "", i: "")
        pushControllerWithName("identificadorQueso", context: masaContexto)
    }

    @IBAction func selectorMasa(value: Float) {
        switch value{
        case 1:
            tipoMasa="Masa delgada"
            masa.setText(tipoMasa)
            botonQueso.setEnabled(true)
        case 2:
            tipoMasa="Masa crujiente"
            masa.setText(tipoMasa)
        case 3:
            tipoMasa="Masa gruesa"
            masa.setText(tipoMasa)
        case 4:
            tipoMasa="Orilla rellena"
            masa.setText(tipoMasa)
        default:
            tipoMasa="Elige masa"
            masa.setText(tipoMasa)
            botonQueso.setEnabled(false)
        }
    }
}
