//
//  TabBarPage.swift
//  MyStore
//
//  Created by Khaled on 14/12/2024.
//

import Foundation

enum TabBarPage {
    case home
    case explore
    case cart
    case profile

    init?(index: Int) {
        switch index {
        case 0:
            self = .home
        case 1:
            self = .explore
        case 2:
            self = .cart
        case 3:
            self = .profile
        default:
            return nil
        }
    }
    
    func pageTitleValue() -> String {
        switch self {
        case .home:
            return "Home"
        case .explore:
            return "Explore"
        case .cart:
            return "Cart"
        case .profile:
            return "Profile"
        }
    }

    func pageOrderNumber() -> Int {
        switch self {
        case .home:
            return 0
        case .explore:
            return 1
        case .cart:
            return 2
        case .profile:
            return 3
        }
    }

    // Add tab icon value
    
    // Add tab icon selected / deselected color
    
    // etc
}
