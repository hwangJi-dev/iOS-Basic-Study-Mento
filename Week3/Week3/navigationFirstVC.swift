//
//  navigationFirstVC.swift
//  Week3
//
//  Created by 황지은 on 2021/05/07.
//

import UIKit

class navigationFirstVC: UIViewController {

    @IBOutlet var redButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        redButton.layer.cornerRadius = 16
        redButton.layer.borderWidth = 1
        redButton.layer.borderColor = CGColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1.0)
//        redButton.layer.backgroundColor = .none
        redButton.alpha = 0.5
//        self.navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
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
