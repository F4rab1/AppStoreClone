//
//  BaseTabBarController.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 08.02.2024.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            createNavController(viewController: UIViewController(), title: "Today", imageName: "square"),
            createNavController(viewController: AppsController(), title: "Apps", imageName: "square.on.square"),
            createNavController(viewController: AppSearchControllerViewController(), title: "Search", imageName: "magnifyingglass"),
        ]
    }
    
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: imageName)
        return navController
        
    }
    
}
