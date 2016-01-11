//
//  ProfileViewController.swift
//  list
//
//  Created by Ed Chao on 1/2/16.
//  Copyright © 2016 Ed Chao. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIViewControllerTransitioningDelegate, UINavigationControllerDelegate {

    var table_lists : UITableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "My Lists"
        
        // SETUP TABLE
        
        table_lists.frame = CGRectMake(0, 0, screenSize.width, screenSize.height - 50);
        table_lists.rowHeight = 100
        table_lists.delegate = self
        table_lists.dataSource = self
        table_lists.registerClass(ListsTableViewCell.self, forCellReuseIdentifier: "cell")
        table_lists.separatorInset = UIEdgeInsetsMake(15, 15, 15, 15)
        table_lists.separatorColor = UIColor.strokeColor()
        table_lists.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        table_lists.tableHeaderView = nil
        table_lists.backgroundColor = UIColor.clearColor()
        view.addSubview(table_lists)
        table_lists.tableFooterView = UIView(frame: CGRect.zero)
        self.table_lists.rowHeight = UITableViewAutomaticDimension
        
        
        // SETUP VIEW
        view.backgroundColor = UIColor.whiteColor()
        
        // SETUP NAV BAR
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "onAdd:")
        

        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // TABLE METHODS
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! ListsTableViewCell
        cell.label_text.text = "12 Items"
        cell.label_title.text = "Hello"
        cell.backgroundColor = UIColor.clearColor()
        cell.sizeToFit()
        cell.setNeedsUpdateConstraints()
        cell.updateConstraintsIfNeeded()
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let listVC: ListViewController = ListViewController(nibName: nil, bundle: nil)
        let thisCell: ListsTableViewCell = tableView.cellForRowAtIndexPath(indexPath) as! ListsTableViewCell!
        
        // Pass the value of the cell to the title of the pushed VC
        if let label = thisCell.label_title?.text {
            listVC.title = label
        }else{
            listVC.title = "mystery!"
        }
        self.navigationController?.pushViewController(listVC, animated: true)
        
    }
    
    
    // ADD METHOD
    
    func onAdd(sender: AnyObject) {
        self.presentModalCreate(self)
    }
    
    
    // PRESENT MODAL METHOD
    
    func presentModalCreate (sender:AnyObject) {
        let composeListVC: ComposeListViewController = ComposeListViewController(nibName: nil, bundle: nil)
        let navVC : NavViewController = NavViewController(rootViewController: composeListVC)
        
        navVC.transitioningDelegate = self
        self.definesPresentationContext = true
        self.presentViewController(navVC, animated: true) { () -> Void in
            //
        }
    }

}
