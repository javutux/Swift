//
//  Counter.swift
//  Zoo
//
//  Created by Ieva Pipinyte on 08/09/2017.
//  Copyright © 2017 Ieva Pipinyte. All rights reserved.
//

import Foundation
import UIKit

class Counter: UIView {

    var counterSize:UIButton?
    var position:String?
    var counterScore:UILabel?
    var counterLevel:UILabel?
    var currentScore:Int = 0
    
    init() {
        
        let screenSize: CGRect = UIScreen.main.bounds
        super.init(frame: CGRect(x: 0, y: 0, width:screenSize.width, height:50))
        self.backgroundColor = UIColor.green
    
        counterLevel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        addSubview(counterLevel!)
        
        counterScore = UILabel(frame: CGRect(x: screenSize.width - 100, y: 0, width: 100, height: 50))
        counterScore!.textAlignment = NSTextAlignment.right;
        addSubview(counterScore!)
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   @objc func startTimer() {
        let timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerTick), userInfo: nil, repeats: true)
    }
    
    @objc func timerTick() {
        currentScore = currentScore + 1
        setScore(score: currentScore)
   }
    
    func setScore(score:Int){
        
        if (score == 30) {
            setLevel(level: 1);
        }
        if (score == 60) {
            setLevel(level: 2);
        }
        if (score == 120) {
            setLevel(level: 3);
        }
        
        if (score == 180) {
            setLevel(level: 4);
        }
        
        counterScore!.text = "Score " + String(score)
    }
    
    func setLevel(level:Int){
         counterLevel!.text = "Level " + String(level)
 }
}

