//
//  ComposeListViewController.swift
//  list
//
//  Created by Ed Chao on 1/10/16.
//  Copyright © 2016 Ed Chao. All rights reserved.
//

import UIKit

class ComposeListViewController: UIViewController {
    
    var textField_title : UITextField = UITextField()
    var textField_item : UITextField = UITextField()
    var label_title: UILabel = UILabel()


    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // SETUP VIEW
        view.backgroundColor = UIColor.whiteColor()
        
        // SETUP TEXTFIELDS
        
        textField_title = UITextField(frame: CGRect(x: 20, y: 6, width: view.frame.width - 40, height: 40))
        textField_title.frame = CGRect(x: 0, y: 0, width: screenSize.width, height: 100)
        textField_title.placeholder = "Write your Title"
        textField_title.textColor = UIColor.primaryColor(1)
        textField_title.userInteractionEnabled = true
        view.addSubview(textField_title)
        
        // SETUP LABELS
        
        label_title = UILabel(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: 140))
        label_title.text = "One note to remember all the things"
        view.addSubview(label_title)
        
        // SETUP NAVIGATION
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Done, target: self, action: "onDone:")
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Cancel, target: self, action: "onCancel:")
        


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
