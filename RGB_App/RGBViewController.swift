//
//  RGBViewController.swift
//  RGB_App
//
//  Created by Andrey on 23.05.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import UIKit

protocol RGBViewControllerDelegate {
    func getColor(_ backgroundColor: UIColor)
}

class RGBViewController: UIViewController {
    
    @IBOutlet weak var rgbView: UIView!
    @IBOutlet weak var sliderRedOutlet: UISlider!
    @IBOutlet weak var sliderGreenOutlet: UISlider!
    @IBOutlet weak var sliderBlueOutlet: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    var colorFromFullSreenVC: UIColor?
    var delegate: RGBViewControllerDelegate!
        
    override func viewWillLayoutSubviews() {
        rgbViewColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valueSlider()
        rgbViewColor()
        textChange()
    }

    @IBAction func sliderRed(_ sender: UISlider) {
        rgbViewColor()
        textChange()
    }
    @IBAction func sliderGreen(_ sender: UISlider) {
        rgbViewColor()
        textChange()
    }
    @IBAction func sliderBlue(_ sender: UISlider) {
        rgbViewColor()
        textChange()
    }
    
    @IBAction func doneAction(_ sender: UIButton) {
        delegate.getColor(rgbView.backgroundColor ?? .black)
    }
    
    private func rgbViewColor() {
        rgbView.backgroundColor = UIColor(
            red: CGFloat(sliderRedOutlet.value),
            green: CGFloat(sliderGreenOutlet.value),
            blue: CGFloat(sliderBlueOutlet.value),
            alpha: 1.0
        )
    }
    
    private func textChange() {
        redLabel.text = String(roundf (sliderRedOutlet.value * 100) / 100)
        greenLabel.text = String(roundf (sliderGreenOutlet.value * 100) / 100)
        blueLabel.text = String(roundf (sliderBlueOutlet.value * 100) / 100)
    }
    
    func valueSlider() {
        var color = colorFromFullSreenVC!.rgba
        sliderRedOutlet.value = Float(color.red)
        sliderGreenOutlet.value = Float(color.green)
        sliderBlueOutlet.value = Float(color.blue)
    }

}

extension UIColor {
    var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)

        return (red, green, blue, alpha)
    }
}
