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
   
    //FUNCTIONS
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth: Int = Int(screenSize.width)
        let screenHeight: Int = Int(screenSize.height)
        
       // var zooCollection:[String:Animal] = [String:Animal]()
       
        var jerry:Animal = Animal()
        var tom:Animal = Animal()
        var counter:Counter = Counter()
//        var level:Counter = Counter()

        tom.nameMe(title: "Tommy")
        tom.setImage(imageName: "Tom")
        tom.move()
        tom.setLocation(valuex: screenWidth/2 - 50, valuey: screenHeight - 120)

        jerry.nameMe(title: "Jerry")
        jerry.setImage(imageName: "Jerry")
        jerry.eat()
        jerry.setLocation(valuex: screenWidth/2 - 50, valuey: 50)
        
        
        counter.setScore(score: 500)
        counter.setLevel(level: 1)
        
        view.addSubview(jerry)
        view.addSubview(tom)
        view.addSubview(counter)
//        view.addSubview(level)

        view.backgroundColor = UIColor.blue
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

