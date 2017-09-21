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
    var info:UITableViewDataSource!
    
    
    @IBOutlet weak var foreground: UIScrollView!
    
    ////FUNCTION
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue

        foreground.delegate = self
      
        
        
        func scrollViewDidScroll(scrollView: UIScrollView) {
            
       
        }
    }
    
    @objc func scplay(sender: UITapGestureRecognizer) {
        //self.present(ScoreViewController(), animated: true)
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "scoreView")
        self.present(controller, animated: true, completion: nil)
    
    }

    
    ////-----------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    
}

}


