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

    var score = Int()

    ///FUNCTION
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor.yellow
    }
    
    func setUser(user:UserData) {
        self.textLabel!.text = user.name 
        print("BOOO! " + user.name!)
    
    }

    func setScore(user:UserData) {
        self.textLabel!.text = String(describing: user.score)
//        print("BOOO! " + user.score!)
        
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
