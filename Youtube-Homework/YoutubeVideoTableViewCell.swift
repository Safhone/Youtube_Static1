//
//  YoutubeVideoTableViewCell.swift
//  Youtube-Homework
//
//  Created by Safhone Oung on 12/7/17.
//  Copyright © 2017 Safhone Oung. All rights reserved.
//

import UIKit

class YoutubeVideoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var youtubeImageView: UIImageView!
    @IBOutlet weak var channelImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var channelName: UILabel!
    @IBOutlet weak var viewLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.channelImageView.layer.cornerRadius = self.channelImageView.frame.height / 2
        self.channelImageView.clipsToBounds = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func cellConfiguration(youtubeImageView: UIImage, channelImageView: UIImage, videoTitleLabel: String, channelName: String, viewLabel: String, timeLabel: String)  {
        self.youtubeImageView.image = youtubeImageView
        self.channelImageView.image = channelImageView
        self.videoTitleLabel.text = videoTitleLabel
        self.channelName.text = channelName
        self.viewLabel.text = viewLabel
        self.timeLabel.text = timeLabel
    }
    
}
