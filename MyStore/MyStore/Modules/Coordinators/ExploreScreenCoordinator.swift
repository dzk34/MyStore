//
//  ExploreScreenCoordinator.swift
//  MyStore
//
//  Created by Khaled on 14/12/2024.
//

import UIKit

class ExploreScreenCoordinator: Coordinator {
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ExploreScreenViewController()
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    

    func goToCategory(_ id: Int) {
        
    }

    func goToProduct(_ id: Int) {
        
    }
}
