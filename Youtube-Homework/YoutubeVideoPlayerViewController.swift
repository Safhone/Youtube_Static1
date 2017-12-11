//
//  YoutubeVideoPlayerViewController.swift
//  Youtube-Homework
//
//  Created by Safhone Oung on 12/7/17.
//  Copyright © 2017 Safhone Oung. All rights reserved.
//

import UIKit

class YoutubeVideoPlayerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var videoPlayerView: UIImageView!
    @IBOutlet weak var titleVideoTableView: UITableView!
    
    var videoImageName: String?
    var videoTitle: String?
    var videoView: String?
    var channelName: String?
    var channelImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleVideoTableView.delegate = self
        titleVideoTableView.dataSource = self
        titleVideoTableView.preservesSuperviewLayoutMargins = false
        titleVideoTableView.separatorInset = UIEdgeInsets.zero
        titleVideoTableView.layoutMargins = UIEdgeInsets.zero
        videoPlayerView.image = UIImage(named: videoImageName!)!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = Bundle.main.loadNibNamed("YoutubeVideoTitleTableViewCell", owner: self, options: nil)?.first as! YoutubeVideoTitleTableViewCell
                    cell.cellConfiguration(titleLabel: videoTitle!, viewLabel: videoView!)
            return cell
        } else if indexPath.row == 1{
            let cell = Bundle.main.loadNibNamed("YoutubeActionTableViewCell", owner: self, options: nil)?.first as! YoutubeActionTableViewCell
            return cell
        } else {
            let cell = Bundle.main.loadNibNamed("YoutubeChannelTableViewCell", owner: self, options: nil)?.first as! YoutubeChannelTableViewCell
            cell.cellConfiguration(channelImage: UIImage(named: channelImage!)!, channelName: channelName!)
            return cell
        }
    }
}
