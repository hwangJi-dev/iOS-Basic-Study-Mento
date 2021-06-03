//
//  TableViewVC.swift
//  week5
//
//  Created by 황지은 on 2021/05/20.
//

import UIKit

class TableViewVC: UIViewController {
    
    @IBOutlet var contactTV: UITableView!
    var contactArray: [Contact] = []
    var demoArray: [Demo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("컨택트 전",contactArray)
        setContacts()
        print("컨택트 후",contactArray)
        contactTV.delegate = self
        contactTV.dataSource = self
        contactTV.reloadData()
    }
    
    
    func setContacts() {
    
        contactArray.append(contentsOf: [Contact(name: "황지은", phoneNumber: "010-9301-3163"),
                                         Contact(name: "박효리", phoneNumber: "010-0000-0000"),
                                         Contact(name: "안나영", phoneNumber: "010-0000-0000"),
                                         Contact(name: "이은솔", phoneNumber: "010-0000-0000"), Contact(name: "고수현", phoneNumber: "010-0000-0000")])
        demoArray.append(contentsOf: [
            Demo(part: "기획", isOn: true),
            Demo(part: "디자인", isOn: false),
            Demo(part: "안드", isOn: true),
            Demo(part: "아요", isOn: true),
            Demo(part: "서버", isOn: false),
        ])
    }
}

extension TableViewVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return contactArray.count
        }
        
        else {
            return demoArray.count
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.section == 0 {
            let contactCell = tableView.dequeueReusableCell(withIdentifier: "ContactTVCell") as! ContactTVCell
            
            contactCell.nameLabel.text = contactArray[indexPath.row].name
            contactCell.phoneNumberLabel.text = contactArray[indexPath.row].phoneNumber

            return contactCell
        }
        else {
            let demoCell = tableView.dequeueReusableCell(withIdentifier: "demoTVCell") as! demoTVCell
            
            demoCell.demoLabel.text = demoArray[indexPath.row].part
            demoCell.demoSwitch.isOn = demoArray[indexPath.row].isOn
            
            if demoArray[indexPath.row].isOn == true {
               // demoCell.demoLabel.textColor
                demoCell.backgroundColor = .white
            }
            else {
                demoCell.backgroundColor = .brown
            }

            return demoCell
        }
    }

    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {

        return UIView(frame: CGRect())
    }
}
