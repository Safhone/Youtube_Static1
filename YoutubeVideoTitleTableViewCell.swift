//
//  YoutubeVideoTitleTableViewCell.swift
//  Youtube-Homework
//
//  Created by Safhone Oung on 12/7/17.
//  Copyright © 2017 Safhone Oung. All rights reserved.
//

import UIKit

class YoutubeVideoTitleTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var viewLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func cellConfiguration(titleLabel: String, viewLabel: String) {
        self.titleLabel.text = titleLabel
        self.viewLabel.text = viewLabel
    }
    
}
