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
       
        let counter:Counter = Counter(tomAnimal: tom)
            
        tom.nameMe(title: "Tom")
        tom.setImage(imageName: "Tom")
        tom.move()
        tom.setTarget(valuex: screenWidth/2 - 50, valuey: screenHeight - 120)
        tom.setspeed(level: 8)
        
        jerry.nameMe(title: "Jerry")
        jerry.setImage(imageName: "Jerry")
        jerry.eat()
        jerry.setTarget(valuex: screenWidth/2 - 50, valuey: 50)
        jerry.setspeed(level: 2)
        
        counter.startTimer()
        counter.setLevel(level: 0)
        
        view.addSubview(jerry)
        view.addSubview(tom)
        view.addSubview(counter)

        view.backgroundColor = UIColor.blue
        
        startCollisionTimer()
        
        let gesture:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(GameViewController.bgTapped))
        view.addGestureRecognizer(gesture)
    
    }
    
    @objc func startCollisionTimer() {
        let timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(collisionCheck), userInfo: nil, repeats: true)
    }
    
    @objc func collisionCheck() {
        
        let isCatch = jerry.frame.intersects(tom.frame)
        
        
        let jw = String(describing: jerry.frame.width)
        let jh = String(describing: jerry.frame.height)
        let jx = String(describing: jerry.frame.minX)
        let jy = String(describing: jerry.frame.minY)
        
        let tw = String(describing: tom.frame.width)
        let th = String(describing: tom.frame.height)
        let tx = String(describing: tom.frame.minX)
        let ty = String(describing: tom.frame.minY)
        print("JERRY: x:" + jx + " y:" + jy + " w:" + jw + " h:" + jh)
        print("TOM: x:" + tx + " y:" + ty + " w:" + tw + " h:" + th)
        print("ISCATCH:" + String(isCatch))
   
        if isCatch == true {
            
            notification()
            
        }
    }
    
    
    @objc func notification() {
        
        let alertController = UIAlertController(title: "Game Over", message: "Click OK if you want to re-start the Game", preferredStyle: .alert)
        
        let backToSignIn = UIAlertAction(title: "OK", style: .default, handler: { action in self.performSegue(withIdentifier: "GoBack", sender: Notification.self) })
        
        alertController.addAction(backToSignIn)
       
        self.present(alertController, animated: true, completion: nil)
        
    
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
     
    }

}

