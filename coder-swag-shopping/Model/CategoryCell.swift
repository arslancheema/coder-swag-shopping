//
//  CategoryCell.swift
//  coder-swag-shopping
//
//  Created by Cheema Arslan Arshad on 2017/08/13.
//  Copyright © 2017 Cheema Arslan Arshad. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
