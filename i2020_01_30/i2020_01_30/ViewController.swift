//
//  ViewController.swift
//  i2020_01_30
//
//  Created by David Tran on 1/30/20.
//  Copyright © 2020 David Tran. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonComponent: UIButton!
    var radio: AVPlayer?
    var radioURL: URL?
    var radioOn: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        radioURL = URL(string: "http://listen.shoutcast.com/ChicanoRap-TalkBox-FunkRadio")
        radio = AVPlayer(url: radioURL!)
        radioOn = false
        
    }
    
    @IBAction func buttonSelected(_ sender: Any) {
        if radioOn! {
            radioOn = false
            radio!.pause()
        } else {
            radioOn = true
            radio!.play()
        }
    }
    
}

