//
//  ContactTVCell.swift
//  week5
//
//  Created by 황지은 on 2021/05/21.
//

import UIKit

class ContactTVCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
