//
//  ListsTableViewCell.swift
//  list
//
//  Created by Ed Chao on 1/2/16.
//  Copyright © 2016 Ed Chao. All rights reserved.
//

import UIKit

let screenSize : CGRect = UIScreen.mainScreen().bounds


class ListsTableViewCell: UITableViewCell {

    var label_title: UILabel! = UILabel()
    var label_text : UILabel! = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        
        // LABEL TITLE
        label_title = UILabel(frame: CGRectMake(30, 30, self.bounds.size.width, 25))
        label_title.textColor = UIColor.blackColor()
        label_title.numberOfLines = 0
        self.contentView.addSubview(label_title)
        
        
        // LABEL TEXT
        label_text = UILabel(frame: CGRectMake(30, 60, self.bounds.size.width, 25))
        label_text.textColor = UIColor.neutralColor(1)
        label_text.numberOfLines = 0
        label_text.font = UIFont(name: label_text.font.fontName, size: 12)
        self.contentView.addSubview(label_text)
        
        
        self.layout()
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    func layout(){
        
        self.label_title.translatesAutoresizingMaskIntoConstraints = false
        self.label_text.translatesAutoresizingMaskIntoConstraints = false

        
        let viewsDictionary = [
            "label_title" :label_title,
            "label_text" :label_text
        ]
        
        // POSITIONS
        
        
        
        let view_constraint_H:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("H:|-20-[label_title]-20-|", options: NSLayoutFormatOptions.AlignAllLeading, metrics: nil, views: viewsDictionary)
        

        let view_constraint_V:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("V:|-30-[label_title]-[label_text]-30-|", options: NSLayoutFormatOptions.AlignAllLeading, metrics: nil, views: viewsDictionary)
        
        self.contentView.addConstraints(view_constraint_H as! [NSLayoutConstraint])
        self.contentView.addConstraints(view_constraint_V as! [NSLayoutConstraint])
        
        
    }


}
