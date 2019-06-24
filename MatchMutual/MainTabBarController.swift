//
//  ViewController.swift
//  MatchMutual
//
//  Created by Zhang, Yifan on 6/24/19.
//  Copyright © 2019 Zhang, Yifan. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
    }

    func setupTabBar() {
        //TODO: Change these tab bars to custom ones
        let videoController = UINavigationController(rootViewController: ChatsViewController())
        videoController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        
        let favoriteController = UINavigationController(rootViewController: ProfileViewController())
        favoriteController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
		
        viewControllers = [videoController, favoriteController]
    }

}

