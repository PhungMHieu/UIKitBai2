//
//  UserTableViewCell.swift
//  2025_06_24v1
//
//  Created by iKame Elite Fresher 2025 on 26/6/25.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var height: UserMeasureV!
    @IBOutlet weak var weight: UserMeasureV!
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
//        let userMeasureWeight = UserMeasure(title: "W", res: "")
//        let userMeasureHeight = UserMeasure(title: "H", res: "")
//        height.config(data: userMeasureHeight)
//        weight.config(data: userMeasureWeight)
        // Configure the view for the selected state
    }
    
}
