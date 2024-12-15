//
//  HomeScreenCoordinator.swift
//  MyStore
//
//  Created by Khaled on 14/12/2024.
//

import UIKit

class HomeScreenCoordinator: Coordinator {
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = HomeScreenViewController()
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 0)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func goToCategory(_ id: Int) {
        
    }

    func goToProduct(_ id: Int) {
        
    }
    
    func goToCart() {
        
    }
}
