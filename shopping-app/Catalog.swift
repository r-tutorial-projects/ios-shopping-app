//
//  Catalog.swift
//  shopping-app
//
//  Created by Ruben Vitt on 18.02.20.
//  Copyright © 2020 Rubeen. All rights reserved.
//

import Foundation


struct Category: Decodable, Identifiable {
    var id: String
    var name: String
    var products: [Product]
}

struct Product: Decodable, Identifiable {
    var id: String
    var price: String
    var name: String
    var speed: String
    var additions: [String]
    var description: String
    
    var fullImage: String {
        id.lowercased()
    }
    
    var previewImage: String {
        id.lowercased() + "-1"
    }
    
    #if DEBUG
    static let exampleProduct = Product(id: "debug", price: "123", name: "Example Product", speed: "Example Speed", additions: ["Addition 1", "Addition 2"], description: "This is an example description")
    #endif
    
}

