//
//  ViewController.swift
//  week4_Study
//
//  Created by 황지은 on 2021/05/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var gradientView: UIView!
    var gradientLayer: CAGradientLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.gradientLayer = CAGradientLayer()
        self.gradientLayer.frame = self.gradientView.bounds
        self.gradientLayer.colors = [UIColor.systemPurple.cgColor, UIColor.systemPink.cgColor, UIColor.systemBlue.cgColor]
        self.gradientView.layer.addSublayer(self.gradientLayer)
    }


}

