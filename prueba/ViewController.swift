//
//  ViewController.swift
//  prueba
//
//  Created by Maestro on 14/08/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtTotal: UITextField!
    @IBOutlet weak var sldPorcentajePropina: UISlider!
    @IBOutlet weak var lblPorcentajePropina: UILabel!
    @IBOutlet weak var lblCantidadPropina: UILabel!
    @IBOutlet weak var lblCantidadTotal: UILabel!

    @IBAction func doChangePorcentajePropina(_ sender: Any) {
        let totalCuenta = Double(txtTotal.text!)
        let porcentajePropina = Int(sldPorcentajePropina.value)
        let cantidadPropina = totalCuenta! * (Double(porcentajePropina) / 100)
        lblPorcentajePropina.text = "\(porcentajePropina)%"
        lblCantidadPropina.text = "$\(cantidadPropina)"
        lblCantidadTotal.text = "$\(cantidadPropina + totalCuenta!)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

