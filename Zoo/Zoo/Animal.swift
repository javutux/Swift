//
//  Animal.swift
//  Zoo
//
//  Created by Ieva Pipinyte on 19/08/2017.
//  Copyright © 2017 Ieva Pipinyte. All rights reserved.
//

import Foundation
import UIKit

class Animal: UIView {
    
//VARIABLES
    var name:String?
    var kind:String?
    var location:String?
    var animalTitle:UIButton?
    var imageName:String = "Tom.jpg"
    var image:UIImage? = UIImage(named: "Tom.jpg")
    var imageView:UIImageView!
//CONSTRUCTORS
    
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 100, height: 120))
        
        self.backgroundColor = UIColor.red
        
        //add button
        animalTitle = UIButton(frame: CGRect(x: 0, y: 100, width: 100, height: 20))
        animalTitle!.setTitle("Ok", for: UIControlState.normal)
        self.addSubview(animalTitle!)
        animalTitle!.addTarget(self, action: #selector(Animal.buttonClicked(_:)), for: .touchUpInside)
        
        //add image
        self.imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        self.addSubview(imageView)
    }
    
//API = PUBLIC FUNCTIONS
    
    @objc func buttonClicked(_ sender: AnyObject?){

        let rx = CGFloat((arc4random_uniform(20) + 1) * 10);
        let ry = CGFloat((arc4random_uniform(20) + 1) * 10);
        
        self.frame.origin = CGPoint(x: rx, y: ry)
        print("Click me " + name!)

    }
   
    func nameMe(title:String) {
        self.name = title
        animalTitle!.setTitle(title, for: UIControlState.normal)
        print("I'm " + name! + " yay!")
    }
    
    func setImage(imageName:String) {
        image = UIImage(named: imageName)
        imageView.image = image
    
    }
    
    
    func setLocation(valuex:Int,valuey:Int){
        self.frame.origin = CGPoint(x: valuex, y: valuey)
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func move(){
        print("I'm " + name! + " moving")
    }
    
    func eat(){
        print("I'm " + name! + " eating a nice food")
    }
    
    func sleep(){
        print("I'm " + name! + " sleeping")
    }
    
    func giveMyName(name:String){
        self.name = name
        
    }
}

//name and kind, location
