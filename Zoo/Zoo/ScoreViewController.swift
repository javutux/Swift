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

    @IBOutlet weak var backButton: UIImageView!
    /// VARIABLES

    private var myArray: [UserData] = []
    private var myTableView: UITableView!
    
    ////FUNCTION
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    /// Back button
        
       let goback:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ScoreViewController.backsc))
          backButton.addGestureRecognizer(goback)
          backButton.isUserInteractionEnabled = true

        
   /// FAKE DATA-------------------------
        
        myArray.append(UserData(username: "tom", userscore: 7))
        myArray.append(UserData(username: "sam", userscore: 98))
        myArray.append(UserData(username: "git", userscore: 234))
        myArray.append(UserData(username: "turk", userscore: 6556))
        myArray.append(UserData(username: "rto", userscore: 3432))
        myArray.append(UserData(username: "iuy", userscore: 767))
        myArray.append(UserData(username: "siyuam", userscore: 958))
        
        //FAKE DATA-------------------------
        
        view.backgroundColor = UIColor.blue
        
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        myTableView = UITableView(frame: CGRect(x: 0, y: 120, width: displayWidth, height: displayHeight - barHeight))
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
    
    @objc func backsc(sender: UITapGestureRecognizer) {
        self.dismiss(animated: false, completion: {})
    
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


