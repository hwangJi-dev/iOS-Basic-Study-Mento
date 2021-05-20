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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setContacts()
        contactTV.delegate = self
        contactTV.dataSource = self
        contactTV.reloadData()
    }
    
    func setContacts() {
        contactArray.append(contentsOf: [Contact(name: "황지은", phoneNumber: "010-9301-3163"),
                             Contact(name: "박효리", phoneNumber: "010-0000-0000"),
                             Contact(name: "안나영", phoneNumber: "010-0000-0000"),
                             Contact(name: "이은솔", phoneNumber: "010-0000-0000"), Contact(name: "고수현", phoneNumber: "010-0000-0000")])
    }
}

extension TableViewVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contactCell = tableView.dequeueReusableCell(withIdentifier: "ContactTVCell") as! ContactTVCell
        
        contactCell.nameLabel.text = contactArray[indexPath.row].name
        contactCell.phoneNumberLabel.text = contactArray[indexPath.row].phoneNumber
        
        return contactCell
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        return UIView(frame: CGRect())
    }
    
    
}
