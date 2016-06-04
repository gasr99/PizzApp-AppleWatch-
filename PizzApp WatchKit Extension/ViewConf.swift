//
//  ViewConf.swift
//  PizzApp
//
//  Created by Gerardo Alfonso Silva Razo on 02/06/16.
//  Copyright © 2016 Gerardo Silva. All rights reserved.
//

import WatchKit
import Foundation


class ViewConf: WKInterfaceController {

    @IBOutlet var botonFinalizar: WKInterfaceButton!
    @IBOutlet var lblTamano: WKInterfaceLabel!
    @IBOutlet var lblMasa: WKInterfaceLabel!
    @IBOutlet var lblQueso: WKInterfaceLabel!
    @IBOutlet var lblIngredientes: WKInterfaceLabel!
    
    var tamanoConf:String=""
    var masaConf:String=""
    var quesoConf:String=""
    var ingredientesConf:String=""
        
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        botonFinalizar.setEnabled(true)
        let c=context as! Valor
        tamanoConf=c.valorTamano
        masaConf=c.valorMasa
        quesoConf=c.valorQueso
        ingredientesConf=c.valorIngredientes
        
        lblTamano.setText("-\(tamanoConf)")
        lblMasa.setText("-\(masaConf)")
        lblQueso.setText("-\(quesoConf)")
        lblIngredientes.setText(ingredientesConf)
        
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
    
}
