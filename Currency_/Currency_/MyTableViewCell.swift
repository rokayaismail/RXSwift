//
//  MyTableViewCell.swift
//  Currency_
//
//  Created by Esraa Hassan on 5/29/19.
//  Copyright © 2019 iti. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    @IBOutlet weak var mainLbl: UILabel!
    
    @IBOutlet weak var secondryLbl: UILabel!
    @IBOutlet weak var fractionLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
