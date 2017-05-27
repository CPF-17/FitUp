//
//  DayTableViewCell.swift
//  SmartFit
//
//  Created by Gerard Recinto on 5/27/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class DayTableViewCell: UITableViewCell {
  @IBOutlet weak var dayLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
