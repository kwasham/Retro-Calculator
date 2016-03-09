//
//  ViewController.swift
//  Retro-Calculator
//sfgndfghfghkvvlvljdvdfv
//  Created by Kirk Washam on 3/8/16.
//  Copyright © 2016 StudioATX. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var outputLbl: UILabel!
    
    
    
    
    var btnSound: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        
        let soundURL = NSURL(fileURLWithPath: path!)
        
        
        do{
            try btnSound = AVAudioPlayer(contentsOfURL: soundURL)
            btnSound.prepareToPlay()
            
        }catch let err as NSError{
            print(err.debugDescription)
        }
        
        }

    
    @IBAction func numberPressed(btn: UIButton) {
        btnSound.play()
    }

}

