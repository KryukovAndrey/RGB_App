//
//  FullScreenViewController.swift
//  RGB_App
//
//  Created by Andrey on 07.06.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import UIKit

class FullScreenViewController: UIViewController {

    @IBOutlet var fullScreenView: UIView!
    
//    let fullScreenBackground = self.view.backgroundColor!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dvc = segue.destination as? RGBViewController {
            dvc.colorFromFullSreenVC = self.view.backgroundColor
            dvc.delegate = self
        }
    }
}

extension FullScreenViewController: RGBViewControllerDelegate {
    func getColor(_ backgroundColor: UIColor) {
        self.view.backgroundColor = backgroundColor
    }
}
