//
//  ViewController.swift
//  MediaPlayer
//
//  Created by XiangyiKong on 12/09/2017.
//  Copyright © 2017 XiangyiKong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var videoView: UIView!
    var mediaPlayer: VLCMediaPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mediaPlayer = VLCMediaPlayer()
        mediaPlayer.drawable = videoView;
        
        mediaPlayer.media = VLCMedia(url: NSURL(string: "rtsp://184.72.239.149/vod/mp4:BigBuckBunny_175k.mov")! as URL)
        
        mediaPlayer.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

