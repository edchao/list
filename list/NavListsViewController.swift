//
//  NavListsViewController.swift
//  list
//
//  Created by Ed Chao on 1/2/16.
//  Copyright © 2016 Ed Chao. All rights reserved.
//

import UIKit

class NavListsViewController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINavigationBar.appearance().backItem?.hidesBackButton = false
//        UINavigationBar.appearance().tintColor = UIColor.primaryAccent(1.0)
        UINavigationBar.appearance().translucent = true
        UINavigationBar.appearance().shadowImage = UIImage()

        
        
        if let font = UIFont(name: "SanFranciscoDisplay-Medium", size: 17) {
            UINavigationBar.appearance().titleTextAttributes = [NSFontAttributeName: font]
        }
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func didTapAdd(sender:UIButton){
        //
    }


}
