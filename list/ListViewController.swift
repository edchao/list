//
//  ListViewController.swift
//  list
//
//  Created by Ed Chao on 1/2/16.
//  Copyright © 2016 Ed Chao. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    var PrevString : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SETUP VIEW
        view.backgroundColor = UIColor.whiteColor()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func onEdit(sender:AnyObject){
        //
    }
    
    
    override func viewWillAppear(animated: Bool) {
        print(PrevString)
        if (PrevString == "Profile"){
            print("waoahaoia")

            self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Edit, target: self, action: "onEdit:")
        }
    }

}
