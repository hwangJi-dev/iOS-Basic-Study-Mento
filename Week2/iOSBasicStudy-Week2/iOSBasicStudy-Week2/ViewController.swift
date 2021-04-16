//
//  ViewController.swift
//  iOSBasicStudy-Week2
//
//  Created by 황지은 on 2021/04/16.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countAppearLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countAppearLabel.text = "\(number)"
    }

    
    @IBAction func touchUpToCountUp(_ sender: Any) {
        number = number + 1
        countAppearLabel.text = "\(number)"
    }
}

