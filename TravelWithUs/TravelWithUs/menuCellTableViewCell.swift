//
//  menuCellTableViewCell.swift
//  TravelWithUs
//
//  Created by ATran.dev on 5/22/17.
//  Copyright © 2017 ATran.Dev. All rights reserved.
//

import UIKit

class menuCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgCell: UIImageView!
    @IBOutlet weak var titleCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
