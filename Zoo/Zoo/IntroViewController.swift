//
//  ViewController.swift
//  Zoo
//
//  Created by Ieva Pipinyte on 19/08/2017.
//  Copyright © 2017 Ieva Pipinyte. All rights reserved.
//

import UIKit
import Foundation

class IntroViewController: UIViewController {
    
    @IBAction func Click(_ sender: UIButton) {
    
        print("click")
        
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
    
    }

    
    @IBOutlet weak var playButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gesture:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(IntroViewController.tbplay))
        playButton.addGestureRecognizer(gesture)
        
        playButton.isUserInteractionEnabled = true
        
    }

    
    
    @objc func tbplay(sender: UITapGestureRecognizer) {
       print("bird")
    }
    
//    @IBAction override func reloadInputViews() {
//      
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}



