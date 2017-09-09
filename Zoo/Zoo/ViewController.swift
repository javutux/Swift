//
//  ViewController.swift
//  Zoo
//
//  Created by Ieva Pipinyte on 19/08/2017.
//  Copyright © 2017 Ieva Pipinyte. All rights reserved.
//

import UIKit
import Foundation
    
class ViewController: UIViewController {
    
    //VARIABLES
    var jerry:Animal = Animal()
    
    
    //FUNCTIONS
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth: Int = Int(screenSize.width)
        let screenHeight: Int = Int(screenSize.height)
       
        var tom:Animal = Animal()
        var counter:Counter = Counter()
        
 //      var score = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
            
        tom.nameMe(title: "Tommy")
        tom.setImage(imageName: "Tom")
        tom.move()
        tom.setLocation(valuex: screenWidth/2 - 50, valuey: screenHeight - 120)

        jerry.nameMe(title: "Jerry")
        jerry.setImage(imageName: "Jerry")
        jerry.eat()
        jerry.setLocation(valuex: screenWidth/2 - 50, valuey: 50)
        
        
        counter.setScore(score: 99)
        counter.setLevel(level: 30)
        
        view.addSubview(jerry)
        view.addSubview(tom)
        view.addSubview(counter)

        view.backgroundColor = UIColor.blue
        
        
        
        let gesture:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.bgTapped))
        view.addGestureRecognizer(gesture)
    
    }
    
    @objc
    func bgTapped(sender: UITapGestureRecognizer) {
        let point = sender.location(in: self.view)
        let px = Int(point.x)
        let py = Int(point.y)
        jerry.setLocation(valuex: px - 50, valuey: py - 50)
        print("Location: " + String(describing: px) + ":" + String (describing: py))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

