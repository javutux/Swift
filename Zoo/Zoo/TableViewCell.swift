//
//  TableViewCell.swift
//  Zoo
//
//  Created by Ieva Pipinyte on 26/09/2017.
//  Copyright © 2017 Ieva Pipinyte. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    ////VARIABLE
// I have created a variable called visual of the type UILabel with no assign value
    
    var visual:UILabel?

    ///FUNCTION
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor(colorLiteralRed: 0.81, green: 0.96, blue: 0.41, alpha: 1)
        
       let screenSize: CGRect = UIScreen.main.bounds
        visual = UILabel(frame: CGRect(x: screenSize.width - 100, y: 0, width: 100, height: 50))
        visual!.textAlignment = NSTextAlignment.right;
        addSubview(visual!)
        
    }
    
    func setUser(user:UserData) {
        self.textLabel!.text = user.name
        self.visual?.text = String(describing: user.score!)
        print("BOOO! " + user.name!)
    
    }

    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        
    }
}
