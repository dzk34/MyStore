//
//  ProfileScreenCoordinator.swift
//  MyStore
//
//  Created by Khaled on 14/12/2024.
//

import UIKit

class ProfileScreenCoordinator: Coordinator {
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ProfileScreenViewController()
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 2)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
}
