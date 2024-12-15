//
//  CartScreenCoordinator.swift
//  MyStore
//
//  Created by Khaled on 14/12/2024.
//

import UIKit

class CartScreenCoordinator: Coordinator {
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = CartScreenViewController()
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 3)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
}
