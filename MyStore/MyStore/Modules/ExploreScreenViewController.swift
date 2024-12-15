//
//  ExploreScreenViewController.swift
//  MyStore
//
//  Created by Khaled on 14/12/2024.
//

import UIKit

class ExploreScreenViewController: UIViewController {
    weak var coordinator: ExploreScreenCoordinator?

    var didSendEventClosure: ((ExploreScreenViewController.Event) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }

}


extension ExploreScreenViewController {
    enum Event {
        case explore
    }
}
