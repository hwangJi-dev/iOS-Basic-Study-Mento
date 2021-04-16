//
//  SecondViewController.swift
//  OT
//
//  Created by 황지은 on 2021/04/09.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var secondButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondButton.layer.cornerRadius = 16
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
