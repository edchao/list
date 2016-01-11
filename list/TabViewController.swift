//
//  TabViewController.swift
//  list
//
//  Created by Ed Chao on 1/2/16.
//  Copyright © 2016 Ed Chao. All rights reserved.
//

import UIKit


extension UIColor {
    class func primaryColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 64/255, green: 63/255, blue: 63/255, alpha: alpha)
    }
    
    class func secondaryColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 113/255, green: 121/255, blue: 129/255, alpha: alpha)
    }
    
    class func primaryAccent(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red:  160/255, green: 203/255, blue: 185/255, alpha: alpha)
    }
    
    class func secondaryAccent(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 208/255, green: 72/255, blue: 72/255, alpha: alpha)
    }
    
    class func neutralColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 155/255, green: 155/255, blue: 155/255, alpha: alpha)
    }
    
    class func strokeColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 226/255, green: 226/255, blue: 226/255, alpha: alpha)
    }
    
    class func headerColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 237/255, green: 241/255, blue: 240/255, alpha: alpha)
    }
}


class TabViewController: UITabBarController, UITabBarControllerDelegate, UIViewControllerTransitioningDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool) {
        let listsVC: ListsViewController = ListsViewController(nibName:nil, bundle: nil)
        let profileVC: ProfileViewController = ProfileViewController(nibName:nil, bundle: nil)

        let item1 : NavListsViewController = NavListsViewController(rootViewController: listsVC)
        item1.transitioningDelegate = self
        let item2 : NavProfileViewController = NavProfileViewController(rootViewController: profileVC)
        let icon1 = UITabBarItem(title: "Everyone", image: UIImage(named: "lists.png"), selectedImage: UIImage(named: "lists_s.png"))
        let icon2 = UITabBarItem(title: "Me", image: UIImage(named: "profile.png"), selectedImage: UIImage(named: "profile_s.png"))
        item1.tabBarItem = icon1
        item2.tabBarItem = icon2
        let controllers = [item1, item2]  //array of the root view controllers displayed by the tab bar interface
        self.viewControllers = controllers
    }
    
    //Delegate methods
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title) ?")
        return true;
    }

    
}
