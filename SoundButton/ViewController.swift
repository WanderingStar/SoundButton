//
//  ViewController.swift
//  SoundButton
//
//  Created by Aneel on 11/27/16.
//  Copyright © 2016 Aneel Nazareth. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playTitleSound(_ sender: UIButton) {
        // Play the sound asset whose name matches the title of the button that was just tapped
        
        guard let title = sender.currentTitle
            else { print("Sender \(sender) has no title"); return }
        guard let sound = NSDataAsset(name: title)
            else { print("Sound asset \(title) not found"); return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(data: sound.data, fileTypeHint: AVFileTypeMPEGLayer3)
            
            player?.play()
        } catch let error {
            print("Error: \(error.localizedDescription)")
        }
    }
}

