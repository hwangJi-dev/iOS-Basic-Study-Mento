//
//  ViewController.swift
//  Week3
//
//  Created by 황지은 on 2021/04/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewStatusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        viewStatusLabel.text = "viewWillAppear"
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        viewStatusLabel.text = "viewDidDisappear"
    }


}

