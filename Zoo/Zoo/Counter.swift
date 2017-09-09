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
    
    func setScore(score:Int){
        counterScore!.text = "Score " + String(score)
        
    }
    
    func setLevel(level:Int){
         counterLevel!.text = "Level " + String(level)
 }
}
