//
//  YoutubeChannelTableViewCell.swift
//  Youtube-Homework
//
//  Created by Safhone Oung on 12/7/17.
//  Copyright © 2017 Safhone Oung. All rights reserved.
//

import UIKit

class YoutubeChannelTableViewCell: UITableViewCell {

    @IBOutlet weak var channelImage: UIImageView!
    @IBOutlet weak var channelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.channelImage.layer.cornerRadius = self.channelImage.frame.height / 2
        self.channelImage.clipsToBounds = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func cellConfiguration(channelImage: UIImage, channelName: String) {
        self.channelImage.image = channelImage
        self.channelName.text = channelName
    }
    
}
