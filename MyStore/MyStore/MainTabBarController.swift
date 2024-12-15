//
//  AppTabBarController.swift
//  MyStore
//
//  Created by Khaled on 14/12/2024.
//

import UIKit

class MainTabBarController: UITabBarController {
    let home = HomeScreenCoordinator(navigationController: UINavigationController())
    let explore = ExploreScreenCoordinator(navigationController: UINavigationController())
    let profile = ProfileScreenCoordinator(navigationController: UINavigationController())
    let cart = CartScreenCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()
        applyTheme()
        
        home.start()
        explore.start()
        profile.start()
        cart.start()
        viewControllers = [home.navigationController, explore.navigationController, profile.navigationController, cart.navigationController]
    }
    
    func applyTheme() {
        tabBar.backgroundColor = .systemBackground
        setNeedsStatusBarAppearanceUpdate()
    }
}
