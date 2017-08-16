//
//  RestaurantDetailTableViewCell.swift
//  FoodPin
//
//  Created by Chung-Chan Wu on 2017/8/10.
//  Copyright © 2017年 JNN Studio. All rights reserved.
//

import UIKit

class RestaurantDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var fieldLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        fieldLabel.sizeToFit()
    }

}
