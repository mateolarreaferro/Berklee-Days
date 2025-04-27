//
//  ViewController.swift
//  HelloSwift Project
//
//  Created by Mateo Larrea Ferro on 1/28/20.
//  Copyright © 2020 Mateo Larrea Ferro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var label1: UILabel!
    @IBAction func slideraction(_ sender: UISlider) {label1.text = String(slider1.value)
        //Makes the text equal to the slider's value
    }
    @IBAction func Mateo(_ sender: UIButton) {
        print("Mateo was pressed")
        // Makes button pressable
    }
    @IBAction func Sasa(_ sender: UIButton) {print("Sasa was pressed")
        // Makes button pressable

    }
    
    @IBAction func Mazen(_ sender: UIButton) {print("Mazen was pressed")
        // Makes button pressable

    }
}

