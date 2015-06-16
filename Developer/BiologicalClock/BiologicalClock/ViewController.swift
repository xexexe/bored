//
//  ViewController.swift
//  BiologicalClock
//
//  Created by MarkRan on 15/6/16.
//  Copyright (c) 2015年 MarkRan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var strengthLabel: UILabel!
    @IBOutlet weak var moodLabel: UILabel!
    @IBOutlet weak var intelligenceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        strengthLabel.text = "111"
        moodLabel.text = "2311"
        intelligenceLabel.text = "222"
        // Do any additional setup after loading the view, typically from a nib.
        
        let birthTime:Double = 483595200
        let nowTime:Double = NSDate().timeIntervalSince1970;
        let liveTime:Double = nowTime - birthTime
        let liveDay:Double = liveTime/(60*60*24)
        
        let strength:Double = -((liveDay%23/0.23)-50)
        let mood:Double = -((liveDay%28/0.28)-50)
        let intelligence:Double = -((liveDay%33/0.33)-50)
        
        strengthLabel.text = "\(strength)"
        moodLabel.text = "\(mood)"
        intelligenceLabel.text = "\(intelligence)"
        print(liveDay,strength,mood,intelligence)
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

