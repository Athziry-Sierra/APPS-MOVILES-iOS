//
//  ArticleCell.swift
//  Evidencia 2
//
//  Created by user167237 on 4/13/21.
//  Copyright © 2021 user167237. All rights reserved.
//

import UIKit

class ArticleCell: UITableViewCell {

    @IBOutlet weak var imgView: UIView!
    
    @IBOutlet weak var title: UIView!
    
    @IBOutlet weak var desc: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
