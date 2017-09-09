//
//  File.swift
//  Zoo
//
//  Created by Ieva Pipinyte on 09/09/2017.
//  Copyright © 2017 Ieva Pipinyte. All rights reserved.
//

import Foundation
import UIKit

class Stopwatch: UIViewController {
    
    var counter = 0
    var timer = Timer()
    
    @IBOutlet weak var label: UILabel!
    
    // start timer
    @IBAction func startTimerButtonTapped(sender: UIButton) {
        timer.invalidate()
        
        // start the timer
timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
    }
    
    // stop timer
    @IBAction func cancelTimerButtonTapped(sender: UIButton) {
        timer.invalidate()
    }
    
    @objc func timerAction() {
        counter += 1
        label.text = "\(counter)"
    }
}
