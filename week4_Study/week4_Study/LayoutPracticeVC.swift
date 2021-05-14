//
//  LayoutPracticeVC.swift
//  week4_Study
//
//  Created by 황지은 on 2021/05/14.
//

import UIKit

class LayoutPracticeVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    @IBOutlet var menuPicker: UIPickerView!
    @IBOutlet var selectedMenuLabel: UILabel!
    @IBOutlet var selectedClothLabel: UILabel!
    var menuArray:[String] = ["피자","치킨","닭강정","샌드위치","고기","파스타"]
    var clothArray:[String] = ["상의","하의","치마","바지","니트","양말","신발"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuPicker.delegate = self
        menuPicker.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return menuArray.count
        }
        else {
            return clothArray.count
        }
    }
    

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            return menuArray[row]
        }
        else {
            return clothArray[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            print(row)
            selectedMenuLabel.text = menuArray[row]
        }
        else {
            print(row)
            selectedClothLabel.text = clothArray[row]
        }
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
