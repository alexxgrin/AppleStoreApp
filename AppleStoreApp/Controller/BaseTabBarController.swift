//
//  BaseTabBarController.swift
//  AppleStoreApp
//
//  Created by Alex Grinberg on 27/04/2019.
//  Copyright © 2019 Alex Grinberg. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController  {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let todaysController = UIViewController()
        todaysController.view.backgroundColor = .white
        todaysController.navigationItem.title = "Today"
        
        let todayNavController = UINavigationController(rootViewController: todaysController)
        todayNavController.tabBarItem.title = "Today"
        todayNavController.tabBarItem.image = #imageLiteral(resourceName: "today_icon")
        todayNavController.navigationBar.prefersLargeTitles = true

        viewControllers = [
            createNavController(viewController: UIViewController(), title: "Today", imageName: "today_icon"),
            createNavController(viewController: UIViewController(), title: "Apps", imageName: "apps"),
            createNavController(viewController: AppsSearchController(collectionViewLayout: UICollectionViewFlowLayout()), title: "Search", imageName: "search")
        ]
        
    }
    
    ////////////////////////////////////////////////////////////////////////////
    //////CREATING NEW VIEW CONTROLLER MODEL WITH NAVIGATION AND TAB BAR////////
    ////////////////////////////////////////////////////////////////////////////
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        navController.navigationBar.prefersLargeTitles = true
        
        viewController.view.backgroundColor = .white
        viewController.navigationItem.title = title
        
        return navController
        
    }
    
}
