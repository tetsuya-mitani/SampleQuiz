//
//  ViewController.swift
//  SampleQuiz
//
//  Created by 三谷 哲也 on 2016/12/29.
//  Copyright © 2016年 Tetsuya Mitani. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    @IBAction func tapSystemSound(_ sender: Any) {
        AudioServicesPlaySystemSoundWithCompletion(1000) {
            //サウンドが鳴り終わった後の処理
        }
        
    }
    @IBAction func tapCustomSound(_ sender: Any) {
        let soundUrl = Bundle.main.url(forResource: "small-bell02", withExtension: "mp3")
        
        var soundId: SystemSoundID = 0
        AudioServicesCreateSystemSoundID(soundUrl as! CFURL, &soundId)
        AudioServicesPlaySystemSoundWithCompletion(soundId) {
            //サウンドが鳴り終わった後の処理
        }
    }
    
    @IBAction func tapVibration(_ sender: Any) {
        AudioServicesPlaySystemSoundWithCompletion(kSystemSoundID_Vibrate) {
            //サウンドが鳴り終わった後の処理
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Test


}

