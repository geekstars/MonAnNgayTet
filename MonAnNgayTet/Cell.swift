//
//  Cell.swift
//  MonAnNgayTet
//
//  Created by Hoàng Minh Thành on 9/12/16.
//  Copyright © 2016 Hoàng Minh Thành. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet weak var imageMonAn: UIImageView!
    @IBOutlet weak var nameMonAn: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
