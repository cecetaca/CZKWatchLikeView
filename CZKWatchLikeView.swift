//
//  CZKWatchLikeView.swift
//  CZKWatchLikeViewExample
//
//  Created by Cecilio C. Tamarit on 18/07/15.
//  Copyright © 2015 Cecilio C. Tamarit. All rights reserved.
//

import UIKit

class CZKWatchLikeView: UIView {
    
    init(width:CGFloat, backgroundColor:UIColor, name:String) {
        super.init(frame: CGRect(x: 0, y: 0, width: width, height: width))
        //let watchLikeView = UIView(frame: CGRectMake(0, 0, width, width))
        self.backgroundColor = backgroundColor
        self.layer.borderWidth = width/66
        self.layer.borderColor = UIColor.whiteColor().CGColor
        self.layer.cornerRadius = width / 2
        
        let nameLabel = UILabel(frame: self.frame)
        nameLabel.center = self.center
        nameLabel.textAlignment = .Center
        nameLabel.font = UIFont(name: "HelveticaNeue", size: width*0.4)
        
        let nameArray = split(name.characters){$0 == " "}.map(String.init)
        let firstNameString = nameArray[0] as NSString
        let firstLetter = firstNameString.substringWithRange(NSRange(location: 0, length: 1))
        if (nameArray.count > 1) {
            let lastNameString = nameArray[1] as NSString
            let secondLetter = lastNameString.substringWithRange(NSRange(location: 0, length: 1))
            nameLabel.text = firstLetter + secondLetter
        } else {
            nameLabel.text = firstLetter
        }
        self.addSubview(nameLabel)
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
}
