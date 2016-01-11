//
//  ComposeListViewController.swift
//  list
//
//  Created by Ed Chao on 1/10/16.
//  Copyright © 2016 Ed Chao. All rights reserved.
//

import UIKit

class ComposeListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SETUP NAVIGATION
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Done, target: self, action: "onDone:")
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Cancel, target: self, action: "onCancel:")
        

        // SETUP VIEW
        view.backgroundColor = UIColor.whiteColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onDone(sender:AnyObject){
        self.dismissViewControllerAnimated(true) { () -> Void in
            //
        }
    }
    
    func onCancel(sender:AnyObject){
        self.dismissViewControllerAnimated(true) { () -> Void in
            //
        }
    }
    


}
