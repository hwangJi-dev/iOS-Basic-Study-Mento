//
//  demoTVCell.swift
//  week5
//
//  Created by 황지은 on 2021/05/28.
//

import UIKit

class demoTVCell: UITableViewCell {

    @IBOutlet var demoLabel: UILabel!
    @IBOutlet var demoSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
