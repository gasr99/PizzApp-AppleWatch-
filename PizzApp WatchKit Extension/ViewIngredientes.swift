//
//  ViewIngredientes.swift
//  PizzApp
//
//  Created by Gerardo Alfonso Silva Razo on 02/06/16.
//  Copyright © 2016 Gerardo Silva. All rights reserved.
//

import WatchKit
import Foundation


class ViewIngredientes: WKInterfaceController {

    @IBOutlet var mensaje: WKInterfaceLabel!
    @IBOutlet var botonConfirmar: WKInterfaceButton!

    //Ingredientes
    @IBOutlet var myJamon: WKInterfaceSwitch!
    @IBOutlet var myPepperoni: WKInterfaceSwitch!
    @IBOutlet var myPavo: WKInterfaceSwitch!
    @IBOutlet var mySalchicha: WKInterfaceSwitch!
    @IBOutlet var myAceitunas: WKInterfaceSwitch!
    @IBOutlet var myCebolla: WKInterfaceSwitch!
    @IBOutlet var myPimiento: WKInterfaceSwitch!
    @IBOutlet var myPiña: WKInterfaceSwitch!
    @IBOutlet var myAnchoas: WKInterfaceSwitch!
    @IBOutlet var mySalami: WKInterfaceSwitch!
    @IBOutlet var myChorizo: WKInterfaceSwitch!
    @IBOutlet var myAtun: WKInterfaceSwitch!
    @IBOutlet var myPollo: WKInterfaceSwitch!
    @IBOutlet var myLechuga: WKInterfaceSwitch!
    
    //Variables
    var tamanoIng:String=""
    var masaIng:String=""
    var quesoIng:String=""
    var contador:Int=0
    var seleccionados=[String]()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        botonConfirmar.setEnabled(false)
        let c=context as! Valor
        tamanoIng=c.valorTamano
        masaIng=c.valorMasa
        quesoIng=c.valorQueso
        
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

    @IBAction func elegirIngredientes() {
        let ingContexto = Valor(t: tamanoIng, m: masaIng, q: quesoIng, i: String(seleccionados))
        pushControllerWithName("identificadorConf", context: ingContexto)
    }
    
    func siContador(){
        if contador<=5{
            botonConfirmar.setEnabled(true)
        }
    }
  
    @IBAction func pickJamon(value: Bool) {
        if value==true{
            contador+=1
            seleccionados.append("Jamón")
            mensaje.setText(String(seleccionados))
                if contador<=5{
                    botonConfirmar.setEnabled(true)
                }else{
                    
                    botonConfirmar.setEnabled(false)
                    mensaje.setText("Máximo 5 ingredientes!")
            }
        }else{
            contador-=1
            seleccionados.removeAtIndex(seleccionados.indexOf("Jamón")!)
            mensaje.setText(String(seleccionados))
            siContador()
        }
    }

    @IBAction func pickPepperoni(value: Bool) {
        if value==true{
            contador+=1
            seleccionados.append("Pepperoni")
            mensaje.setText(String(seleccionados))
                if contador<=5{
                    botonConfirmar.setEnabled(true)
                }else{
                    
                    botonConfirmar.setEnabled(false)
                    mensaje.setText("Máximo 5 ingredientes!")
            }
        }else{
            contador-=1
            seleccionados.removeAtIndex(seleccionados.indexOf("Pepperoni")!)
            mensaje.setText(String(seleccionados))
            siContador()
        }
    }
    
    @IBAction func pickPavo(value: Bool) {
        if value==true{
            contador+=1
            seleccionados.append("Pavo")
            mensaje.setText(String(seleccionados))
                if contador<=5{
                    botonConfirmar.setEnabled(true)
                }else{
                    
                    botonConfirmar.setEnabled(false)
                    mensaje.setText("Máximo 5 ingredientes!")
            }
        }else{
            contador-=1
            seleccionados.removeAtIndex(seleccionados.indexOf("Pavo")!)
            mensaje.setText(String(seleccionados))
            siContador()
        }
    }
    
    @IBAction func pickSalchicha(value: Bool) {
        if value==true{
            contador+=1
            seleccionados.append("Salchicha")
            mensaje.setText(String(seleccionados))
                if contador<=5{
                    botonConfirmar.setEnabled(true)
                }else{
                    
                    botonConfirmar.setEnabled(false)
                    mensaje.setText("Máximo 5 ingredientes!")
            }
        }else{
            contador-=1
            seleccionados.removeAtIndex(seleccionados.indexOf("Salchicha")!)
            mensaje.setText(String(seleccionados))
            siContador()
        }
    }
    
    @IBAction func pickAceitunas(value: Bool) {
        if value==true{
            contador+=1
            seleccionados.append("Aceitunas")
            mensaje.setText(String(seleccionados))
                if contador<=5{
                    botonConfirmar.setEnabled(true)
                }else{
                    
                    botonConfirmar.setEnabled(false)
                    mensaje.setText("Máximo 5 ingredientes!")
            }
        }else{
            contador-=1
            seleccionados.removeAtIndex(seleccionados.indexOf("Aceitunas")!)
            mensaje.setText(String(seleccionados))
            siContador()
        }
    }

    @IBAction func pickCebolla(value: Bool) {
        if value==true{
            contador+=1
            seleccionados.append("Cebolla")
            mensaje.setText(String(seleccionados))
                if contador<=5{
                    botonConfirmar.setEnabled(true)
                }else{
                    
                    botonConfirmar.setEnabled(false)
                    mensaje.setText("Máximo 5 ingredientes!")
            }
        }else{
            contador-=1
            seleccionados.removeAtIndex(seleccionados.indexOf("Cebolla")!)
            mensaje.setText(String(seleccionados))
            siContador()
        }
    }

    @IBAction func pickPimiento(value: Bool) {
        if value==true{
            contador+=1
            seleccionados.append("Pimiento")
            mensaje.setText(String(seleccionados))
                if contador<=5{
                    botonConfirmar.setEnabled(true)
                }else{
                    
                    botonConfirmar.setEnabled(false)
                    mensaje.setText("Máximo 5 ingredientes!")
            }
        }else{
            contador-=1
            seleccionados.removeAtIndex(seleccionados.indexOf("Pimiento")!)
            mensaje.setText(String(seleccionados))
            siContador()
        }
    }

    @IBAction func pickPina(value: Bool) {
        if value==true{
            contador+=1
            seleccionados.append("Piña")
            mensaje.setText(String(seleccionados))
                if contador<=5{
                    botonConfirmar.setEnabled(true)
                }else{
                    
                    botonConfirmar.setEnabled(false)
                    mensaje.setText("Máximo 5 ingredientes!")
            }
        }else{
            contador-=1
            seleccionados.removeAtIndex(seleccionados.indexOf("Piña")!)
            mensaje.setText(String(seleccionados))
            siContador()
        }
    }
    
    @IBAction func pickAnchoas(value: Bool) {
        if value==true{
            contador+=1
            seleccionados.append("Anchoas")
            mensaje.setText(String(seleccionados))
                if contador<=5{
                    botonConfirmar.setEnabled(true)
                }else{
                    
                    botonConfirmar.setEnabled(false)
                    mensaje.setText("Máximo 5 ingredientes!")
            }
        }else{
            contador-=1
            seleccionados.removeAtIndex(seleccionados.indexOf("Anchoas")!)
            mensaje.setText(String(seleccionados))
            siContador()
        }
    }
    
    @IBAction func pickSalami(value: Bool) {
        if value==true{
            contador+=1
            seleccionados.append("Salami")
            mensaje.setText(String(seleccionados))
                if contador<=5{
                    botonConfirmar.setEnabled(true)
                }else{
                    
                    botonConfirmar.setEnabled(false)
                    mensaje.setText("Máximo 5 ingredientes!")
            }
        }else{
            contador-=1
            seleccionados.removeAtIndex(seleccionados.indexOf("Salami")!)
            mensaje.setText(String(seleccionados))
            siContador()
        }
    }

    @IBAction func pickChorizo(value: Bool) {
        if value==true{
            contador+=1
            seleccionados.append("Chorizo")
            mensaje.setText(String(seleccionados))
                if contador<=5{
                    botonConfirmar.setEnabled(true)
                }else{
                    
                    botonConfirmar.setEnabled(false)
                    mensaje.setText("Máximo 5 ingredientes!")
            }
        }else{
            contador-=1
            seleccionados.removeAtIndex(seleccionados.indexOf("Chorizo")!)
            mensaje.setText(String(seleccionados))
            siContador()
        }
    }
    
    @IBAction func pickAtun(value: Bool) {
        if value==true{
            contador+=1
            seleccionados.append("Atún")
            mensaje.setText(String(seleccionados))
                if contador<=5{
                    botonConfirmar.setEnabled(true)
                }else{
                    
                    botonConfirmar.setEnabled(false)
                    mensaje.setText("Máximo 5 ingredientes!")
            }
        }else{
            contador-=1
            seleccionados.removeAtIndex(seleccionados.indexOf("Atún")!)
            mensaje.setText(String(seleccionados))
            siContador()
        }
    }
    
    @IBAction func pickPollo(value: Bool) {
        if value==true{
            contador+=1
            seleccionados.append("Pollo")
            mensaje.setText(String(seleccionados))
                if contador<=5{
                    botonConfirmar.setEnabled(true)
                }else{
                    
                    botonConfirmar.setEnabled(false)
                    mensaje.setText("Máximo 5 ingredientes!")
            }
        }else{
            contador-=1
            seleccionados.removeAtIndex(seleccionados.indexOf("Pollo")!)
            mensaje.setText(String(seleccionados))
            siContador()
        }
    }
    
    @IBAction func pickLechuga(value: Bool) {
        if value==true{
            contador+=1
            seleccionados.append("Lechuga")
            mensaje.setText(String(seleccionados))
                if contador<=5{
                    botonConfirmar.setEnabled(true)
                }else{
                    
                    botonConfirmar.setEnabled(false)
                    mensaje.setText("Máximo 5 ingredientes!")
            }
        }else{
            contador-=1
            seleccionados.removeAtIndex(seleccionados.indexOf("Lechuga")!)
            mensaje.setText(String(seleccionados))
            siContador()
        }
    }

}









