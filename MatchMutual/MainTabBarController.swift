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
        let chatController = UINavigationController(rootViewController: ChatsViewController())
        chatController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        
        let profileController = UINavigationController(rootViewController: ProfileViewController())
        profileController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
		
		let swipeController = UINavigationController(rootViewController: SwipeTabViewController())
		swipeController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
		
        viewControllers = [swipeController, chatController, profileController]
    }

}

