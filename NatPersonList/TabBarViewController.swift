//
//  TabBarViewController.swift
//  NatPersonList
//
//  Created by HappyLiya on 28.02.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()
       setupViewControllers(with: persons)
    }
    
    private func setupViewControllers(with persons: [Person]) {
        let personListVC = viewControllers?.first as! PersonListTableViewController
        let fullInfoListVC = viewControllers?.last as! FullInfoListTableViewController
        
        personListVC.persons = persons
        fullInfoListVC.persons = persons
    }
  
}
