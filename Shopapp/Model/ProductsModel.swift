//
//  ProductsModel.swift
//  Shopapp
//
//  Created by Jairo Jair Toro Novellis on 20/02/23.
//

import Foundation


struct Product: Codable {
    let id: Int
    let title: String
    let price: Int
    let description: String
    let images: [String]
    let creationAt, updatedAt: String
    let category: Category
}

struct Category: Codable {
    let id: Int
    let name: Name
    let image: String
    let creationAt, updatedAt: String
}

enum Name: String, Codable {
    case clothes = "Clothes"
    case electronics = "Electronics"
    case furniture = "Furniture"
    case others = "Others"
    case shoes = "Shoes"
}
