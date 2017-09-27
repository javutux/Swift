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
  
    /// VARIABLES
    
    @IBOutlet weak var playButton: UIImageView!
    @IBOutlet weak var scoreButton: UIImageView!
    
    ////Function
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let getsc:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(IntroViewController.scplay))
        
        scoreButton.addGestureRecognizer(getsc)
        scoreButton.isUserInteractionEnabled = true
        
        let gesture:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(IntroViewController.tbplay))
        
        if(playButton != nil) {
            playButton.addGestureRecognizer(gesture)
            playButton.isUserInteractionEnabled = true
        }
       
        
    }

    //-----------
    @objc func tbplay(sender: UITapGestureRecognizer) {
        
        self.present(GameViewController(), animated: true)
        
    }
    
    //-----------

    @objc func scplay(sender: UITapGestureRecognizer) {

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "scoreView")
        self.present(controller, animated: true, completion: nil)
        
    }
    
    ////-----------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}



