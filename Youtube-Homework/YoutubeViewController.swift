//
//  YoutubeViewController.swift
//  Youtube-Homework
//
//  Created by Safhone Oung on 12/7/17.
//  Copyright © 2017 Safhone Oung. All rights reserved.
//

import UIKit

class YoutubeViewController: UITableViewController {
    
    let youtubeVideo: [Youtube] = [
        Youtube.init(title: "Introducing Pixelmator Pro",
                     view: "13K views",
                     time: "3 months ago",
                     youtubeThumbnail: "Pixelmator Pro - Introducing",
                     channelName: "Pixelmator",
                     channelImage: "Pixelmator"),
        Youtube.init(title: "Pixelmator Pro - Painting",
                     view: "6.3k views",
                     time: "2 months ago",
                     youtubeThumbnail: "Pixelmator Pro - Painting",
                     channelName: "Pixelmator",
                     channelImage: "Pixelmator"),
        Youtube.init(title: "Pixelmator Pro - Experience",
                     view: "15k views",
                     time: "1 months ago",
                     youtubeThumbnail: "Pixelmator Pro - Experience",
                     channelName: "Pixelmator",
                     channelImage: "Pixelmator"),
        Youtube.init(title: "Pixelmator Pro - Automatic Layer Naming",
                     view: "2.5k views",
                     time: "1 month ago",
                     youtubeThumbnail: "Pixelmator Pro - Automatic Layer Naming",
                     channelName: "Pixelmator",
                     channelImage: "Pixelmator"),
        Youtube.init(title: "Pixelmator Pro - Color Adjustments",
                     view: "1.2k views",
                     time: "2 days ago",
                     youtubeThumbnail: "Pixelmator Pro - Color Adjustments",
                     channelName: "Pixelmator",
                     channelImage: "Pixelmator")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage(named: "youtube-logo"), for: UIControlState.normal)
        let barButton = UIBarButtonItem(customView: button)
        self.navigationItem.leftBarButtonItem = barButton
        
        tableView.preservesSuperviewLayoutMargins = false
        tableView.separatorInset = UIEdgeInsets.zero
        tableView.layoutMargins = UIEdgeInsets.zero
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return youtubeVideo.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("YoutubeVideoTableViewCell", owner: self, options: nil)?.first as! YoutubeVideoTableViewCell
        
        cell.cellConfiguration(
            youtubeImageView: UIImage(named: youtubeVideo[indexPath.row].youtubeThumbnail!)!,
            channelImageView: UIImage(named: youtubeVideo[indexPath.row].channelImage!)!,
            videoTitleLabel: youtubeVideo[indexPath.row].title!,
            channelName: youtubeVideo[indexPath.row].channelName!,
            viewLabel: youtubeVideo[indexPath.row].view!,
            timeLabel: youtubeVideo[indexPath.row].time!)
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let youtubeVideoPlayer = self.storyboard?.instantiateViewController(withIdentifier: "youtubePlayerStoryboardID") as! YoutubeVideoPlayerViewController
        
        youtubeVideoPlayer.videoImageName = youtubeVideo[indexPath.row].youtubeThumbnail
        youtubeVideoPlayer.videoTitle = youtubeVideo[indexPath.row].title
        youtubeVideoPlayer.videoView = youtubeVideo[indexPath.row].view
        youtubeVideoPlayer.channelName = youtubeVideo[indexPath.row].channelName
        youtubeVideoPlayer.channelImage = youtubeVideo[indexPath.row].channelImage
        
        self.navigationController?.pushViewController(youtubeVideoPlayer, animated: true)
    }

}
