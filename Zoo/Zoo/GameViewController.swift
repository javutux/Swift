//
//  ViewController.swift
//  Zoo
//
//  Created by Ieva Pipinyte on 19/08/2017.
//  Copyright © 2017 Ieva Pipinyte. All rights reserved.
//

import UIKit
import Foundation
    
class GameViewController: UIViewController {
    @IBOutlet var Controllermain: [UIView]!
    
    //VARIABLES
    var jerry:Animal = Animal()
    var tom:Animal = Animal()
    
    
    //FUNCTIONS
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth: Int = Int(screenSize.width)
        let screenHeight: Int = Int(screenSize.height)
       
        let counter:Counter = Counter()
            
        tom.nameMe(title: "Tom")
        tom.setImage(imageName: "Tom")
        tom.move()
        tom.setLocation(valuex: screenWidth/2 - 50, valuey: screenHeight - 120)

        jerry.nameMe(title: "Jerry")
        jerry.setImage(imageName: "Jerry")
        jerry.eat()
        jerry.setLocation(valuex: screenWidth/2 - 50, valuey: 50)
        jerry.setspeed(level: 2)
        
        counter.startTimer()
        counter.setLevel(level: 0)
        
        view.addSubview(jerry)
        view.addSubview(tom)
        view.addSubview(counter)

        view.backgroundColor = UIColor.blue
        
        
        
        let gesture:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(GameViewController.bgTapped))
        view.addGestureRecognizer(gesture)
    
    }
    
    @objc
    func bgTapped(sender: UITapGestureRecognizer) {
        let point = sender.location(in: self.view)
        let px = Int(point.x)
        let py = Int(point.y)
        jerry.setTarget(valuex: px - 50, valuey: py - 50)
        tom.chaseAnimal(target: jerry)
        print("Location: " + String(describing: px) + ":" + String (describing: py))
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

