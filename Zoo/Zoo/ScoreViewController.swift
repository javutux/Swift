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
    var data:UITextView!
    
    
    
    ////Function
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
        
//        imageView = UIImageView(image: UIImage(named: "tuk.jpg"))
//
//        scrollView = UIScrollView(frame: view.bounds)
//        scrollView.backgroundColor = UIColor.blue
//        scrollView.contentSize = imageView.bounds.size
//
//        scrollView.contentOffset = CGPoint(x: 1000, y: 450)
//        scrollView.autoresizingMask = UIViewAutoresizing(rawValue: UIViewAutoresizing.RawValue(UInt8(UIViewAutoresizing.flexibleWidth.rawValue) | UInt8(UIViewAutoresizing.flexibleHeight.rawValue)))
//
//        scrollView.addSubview(imageView)
//        view.addSubview(scrollView)
//
//        setZoomScale()
//    }
//
//
//    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
//        return imageView
//    }
//
//    func setZoomScale() {
//        let imageViewSize = imageView.bounds.size
//        let scrollViewSize = scrollView.bounds.size
//        let widthScale = scrollViewSize.width / imageViewSize.width
//        let heightScale = scrollViewSize.height / imageViewSize.height
//
//        scrollView.minimumZoomScale = min(widthScale, heightScale)
//        scrollView.zoomScale = 1.0
    }

    
    ////-----------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}




