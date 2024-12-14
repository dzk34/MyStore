//
//  Product.swift
//  MyStore
//
//  Created by Khaled on 14/12/2024.
//

import Foundation

struct Product: Decodable {
    let id: String
    let title: String
    let price: Float
    let description: String
    let category: String
    let image: URL?
    let rating: Rating
}

struct Rating: Decodable {
    let rate: Float
    let count: Int
}

struct ProductsList: Decodable {
    let products: [Product]
}
