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

//    let padding: CGFloat = 5
//    var background: UIView!
//    var nameLabel: UILabel!
//    var scoreLabel: UILabel!
    
//    var user: UserData? {
//        didSet {
//            if let s = user{
//                scoreLabel.text = s.score
//                nameLabel.text = s.name
//                setNeedsLayout()
//           }
//        }
//    }

    ///FUNCTION
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = UIColor.yellow
        
        
//        background.alpha = 0.6
//        contentView.addSubview(background)
//
//        nameLabel.textAlignment = .left
//        nameLabel.textColor = UIColor.black
//        contentView.addSubview(nameLabel)
//
//        scoreLabel.textAlignment = .center
//        scoreLabel.textColor = UIColor.black
//        contentView.addSubview(scoreLabel)
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
