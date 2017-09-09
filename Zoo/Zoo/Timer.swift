//
//  Timer.swift
//  Zoo
//
//  Created by Ieva Pipinyte on 09/09/2017.
//  Copyright © 2017 Ieva Pipinyte. All rights reserved.
//

import Foundation
class SimpleTimer {
    typealias Tick = ()->Void
    var timer:Timer?
    var interval:TimeInterval /*in seconds*/
    var repeats:Bool
    var tick:Tick
    
    init( interval:TimeInterval, repeats:Bool = false, onTick:@escaping Tick){
        self.interval = interval
        self.repeats = repeats
        self.tick = onTick
    }
    func start(){
        timer = Timer.scheduledTimer(timeInterval: interval, target: self, selector: #selector(update), userInfo: nil, repeats: true)//swift 3 upgrade
    }
    func stop(){
        if(timer != nil){timer!.invalidate()}
    }
    /**
     * This method must be in the public or scope
     */
    @objc func update() {
        tick()
    }
}


