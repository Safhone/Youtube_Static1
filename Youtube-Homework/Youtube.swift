//
//  Youtube.swift
//  Youtube-Homework
//
//  Created by Safhone Oung on 12/7/17.
//  Copyright © 2017 Safhone Oung. All rights reserved.
//

import UIKit

class Youtube {
    var title: String?
    var view: String?
    var time: String?
    var youtubeThumbnail: String?
    var channelName: String?
    var channelImage: String?
    
    init(title: String, view: String, time: String, youtubeThumbnail: String, channelName: String, channelImage: String) {
        self.title = title
        self.view = view
        self.time = time
        self.youtubeThumbnail = youtubeThumbnail
        self.channelName = channelName
        self.channelImage = channelImage
    }
    
}
