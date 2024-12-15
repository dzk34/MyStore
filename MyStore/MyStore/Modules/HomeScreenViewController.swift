//
//  HomeScreenViewController.swift
//  MyStore
//
//  Created by Khaled on 14/12/2024.
//

import UIKit

class HomeScreenViewController: UIViewController {
    weak var coordinator: HomeScreenCoordinator?
    var selectedProduct = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
//    var didSendEventClosure: ((HomeScreenViewController.Event) -> Void)?

//    func exploreTapped() {
//        coordinator?.exploreStore()
//    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        coordinator?.didFinish()
//    }
}

//extension HomeScreenViewController {
//    enum Event {
//        case home
//    }
//}
