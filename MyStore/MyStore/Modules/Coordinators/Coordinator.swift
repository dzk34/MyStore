//
//  AppCoordinator.swift
//  MyStore
//
//  Created by Khaled on 14/12/2024.
//

import UIKit

protocol Coordinator: AnyObject { //AnyObject so it's conformed only by classes (=== in the remove childCoordinators)
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()

    //    var finishDelegate: CoordinatorFinishDelegate? { get set }
//    var type: CoordinatorType { get }
//    func addChildCoordinator(childCoordinator: Coordinator)
//    func removeChildCoordinator(childCoordinator: Coordinator)
//    func finish()
//    init(_ navigationController: UINavigationController)
}

class MainCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.delegate = self
    }
    
    func homeStore(to productId: Int) {
        let child = HomeScreenCoordinator(navigationController: navigationController)
        child.parentCoordinator = self
        childCoordinators.append(child)
        child.start()
    }
    
//    func exploreStore() {
//        let vc = ExploreScreenViewController()
//        vc.coordinator = self
//        navigationController.pushViewController(vc, animated: true)
//    }
    
    func childDidFinish(_ child: Coordinator?) {
        childCoordinators = childCoordinators.filter { $0 !== child }
    }
}

extension MainCoordinator {
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else { return }
        
        // we are pushing
        if navigationController.viewControllers.contains(fromViewController) {
            return
        }
         
        //we are popping
        if let viewController = fromViewController as? HomeScreenViewController {
            childDidFinish(viewController.coordinator)
        }
    }
}
/*
extension Coordinator {
    func addChildCoordinator(childCoordinator: Coordinator) {
        self.childCoordinators.append(childCoordinator)
        childCoordinator.start()
    }

    func removeChildCoordinator(childCoordinator: Coordinator) {
        self.childCoordinators = self.childCoordinators.filter { $0 !== childCoordinator }
 
         // other option
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === childCoordinator {
                 childCoordinators.remove(at: index)
                break
            }
        }
    }
    
    func finish() {
        childCoordinators.removeAll()
//        finishDelegate?.coordinatorDidFinish(childCoordinator: self)
    }
}


enum CoordinatorType {
    case app, login, tab
}

protocol ParentCoordinator: AnyObject {
    var parentCoordinator: Coordinator? { get }
}

// On respecte les 4ème et 5ème principe du SOLID de la ségrégation d'interface et de l'inversion de dépendances
protocol HomeViewControllerDelegate: AnyObject {
    func goToListView()
}


final class AppCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    private(set) var navigationController: UINavigationController

    init(with navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let homeViewController = HomeViewController.instantiate(storyboardName: "Main") ?? HomeViewController()
        homeViewController.coordinator = self
        navigationController.pushViewController(homeViewController, animated: false)
    }
    
}


class MainCoordinator: NSObject {
    var tabBarController: AppTabBarController?
    let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        super.init()
    }
    
    func start() {
        let tabBarController = AppTabBarController()
        self.tabBarController = tabBarController
        tabBarController.modalPresentationStyle = .fullScreen
        tabBarController.modalTransitionStyle = .crossDissolve
        
        navigationController.present(tabBarController, animated: false)
    }
}
*/
