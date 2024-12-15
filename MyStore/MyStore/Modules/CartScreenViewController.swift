//
//  CartScreenViewController.swift
//  MyStore
//
//  Created by Khaled on 14/12/2024.
//

import UIKit

class CartScreenViewController: UIViewController {
    weak var coordinator: CartScreenCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
}

extension CartScreenViewController {
    enum Event {
        case cart
    }
}
