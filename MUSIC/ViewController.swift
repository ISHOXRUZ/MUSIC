//
//  ViewController.swift
//  MUSIC
//
//  Created by Lucifer on 2/9/20.
//  Copyright © 2020 Lucifer. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        audioPlayer = try! AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Ultra Music Festival 2014 - Warm up (Mix)", ofType: ".mp3")!))
        audioPlayer.prepareToPlay()
    }
    
    @IBAction func Play(_ sender: Any) {
        audioPlayer.play()
    }
    @IBAction func Pause(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.pause()
        }
    }
    @IBAction func Restart(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.currentTime = 0
            audioPlayer.play()
        } else {
            audioPlayer.currentTime = 0
            audioPlayer.play()
        }
    }
}


