//
//  DemoTableViewCell.swift
//  SwiftDemo
//
//  Created by Nishchita on 11/24/17.
//  Copyright © 2017 Nishchita. All rights reserved.
//

import UIKit

class DemoTableViewCell: UITableViewCell {

    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var subLbl: UILabel!
    @IBOutlet weak var subLbl1: UILabel!
    @IBOutlet weak var subLbl2: UILabel!
    @IBOutlet weak var subLbl3: UILabel!
    @IBOutlet weak var subLbl4: UILabel!
    @IBOutlet weak var sampleImg: UIImageView!
    
    @IBOutlet weak var detailLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
