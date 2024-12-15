//
//  ProfileScreenViewController.swift
//  MyStore
//
//  Created by Khaled on 14/12/2024.
//

import UIKit

class ProfileScreenViewController: UIViewController {
//    var didSendEventClosure: ((ProfileScreenViewController.Event) -> Void)?
    weak var coordinator: ProfileScreenCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}

extension ProfileScreenViewController {
    enum Event {
        case profile
    }
}
