//
//  CTableViewCell.swift
//  TviewApp
//
//  Created by nsn on 9/23/19.
//  Copyright © 2019 nex sn. All rights reserved.
//

import UIKit

class CTableViewCell: UITableViewCell {

    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
