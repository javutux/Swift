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
 
        var zooCollection:[String:Animal] = [String:Animal]()
    
        zooCollection["animal1"] = Animal()
        zooCollection["animal2"] = Animal()

        zooCollection["animal1"]?.nameMe(title: "Tommy")
        zooCollection["animal1"]?.setImage(imageName: "Tom")
        zooCollection["animal1"]?.move()
        zooCollection["animal1"]?.setLocation(valuex: 200, valuey: 200)

        zooCollection["animal2"]?.nameMe(title: "Jerry")
        zooCollection["animal2"]?.setImage(imageName: "Jerry")
        zooCollection["animal2"]?.eat()
        zooCollection["animal2"]?.setLocation(valuex: 20, valuey: 20)
            
        view.addSubview(zooCollection["animal1"]!)
        view.addSubview(zooCollection["animal2"]!)
        view.backgroundColor = UIColor.blue
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

