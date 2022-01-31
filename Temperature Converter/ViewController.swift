//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Marcelo on 2022-01-27.
//

import Cocoa

class ViewController: NSViewController, NSTextFieldDelegate {

    
    @IBOutlet weak var tempCelsius: NSTextField!
    
    @IBOutlet weak var tempFahrenheit: NSTextField!
    
    @IBOutlet weak var sample: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func BtnCalculate(_ sender: Any) {
        
        let tempC = tempCelsius.stringValue
        var tempF = Double(tempC) ?? 0
        if tempF == 0.0 { tempCelsius.stringValue = "0.0"
        }
        tempF = tempF*9/5+32
        
        tempFahrenheit.stringValue = String(tempF)
        
    }
    
}

