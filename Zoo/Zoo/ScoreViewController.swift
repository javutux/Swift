//
//  ViewController.swift
//  Zoo
//
//  Created by Ieva Pipinyte on 19/08/2017.
//  Copyright © 2017 Ieva Pipinyte. All rights reserved.
//

import UIKit
import Foundation



class ScoreViewController: UIViewController, UIScrollViewDelegate {
    
    /// VARIABLES

    var scrollView: UIScrollView!
    var imageView: UIImageView!
    var info:UITextView!
    
    @IBOutlet weak var foreground: UIScrollView!
    
    ////FUNCTION
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue

    
        foreground.delegate = self
      
        func scrollViewDidScroll(scrollView: UIScrollView) {
            
      
        }
    }
    
    
    

    
    ////-----------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}




