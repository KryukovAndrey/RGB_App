//
//  ViewController.swift
//  RGB_App
//
//  Created by Andrey on 23.05.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rgbView: UIView!
    @IBOutlet weak var sliderRedOutlet: UISlider!
    @IBOutlet weak var sliderGreenOutlet: UISlider!
    @IBOutlet weak var sliderBlueOutlet: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sliderRed(_ sender: UISlider) {
        rgbViewColor()
        redLabel.text = String(roundf (sliderRedOutlet.value * 100) / 100)
    }
    @IBAction func sliderGreen(_ sender: UISlider) {
        rgbViewColor()
        greenLabel.text = String(roundf (sliderGreenOutlet.value * 100) / 100)
    }
    @IBAction func sliderBlue(_ sender: UISlider) {
        rgbViewColor()
        blueLabel.text = String(roundf (sliderBlueOutlet.value * 100) / 100)
    }
    
    func rgbViewColor(){
        rgbView.backgroundColor = UIColor(
            red: CGFloat(sliderRedOutlet.value),
            green: CGFloat(sliderGreenOutlet.value),
            blue: CGFloat(sliderBlueOutlet.value),
            alpha: 1.0
        )
    }
}

