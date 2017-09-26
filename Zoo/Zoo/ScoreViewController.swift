//
//  ViewController.swift
//  Zoo
//
//  Created by Ieva Pipinyte on 19/08/2017.
//  Copyright © 2017 Ieva Pipinyte. All rights reserved.
//

import UIKit
import Foundation



class ScoreViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    /// VARIABLES

    private var myArray: [UserData] = []
    private var myTableView: UITableView!
    private var name: String?
    private var score: String?
    
    ////FUNCTION
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //FAKE DATA-------------------------
        
        var u = UserData()
        u.name = "gfhfghgfhgfhf"
        myArray.append(u)
        
        //FAKE DATA-------------------------
        
        
        view.backgroundColor = UIColor.blue
        
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        myTableView.register(TableViewCell.self, forCellReuseIdentifier: "MyCell")
        myTableView.dataSource = self
        myTableView.delegate = self
        self.view.addSubview(myTableView)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Num: \(indexPath.row)")
        print("Value: \(myArray[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath) as! TableViewCell
        cell.setUser(user:(myArray[indexPath.row]))
        return cell
    }
    
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

