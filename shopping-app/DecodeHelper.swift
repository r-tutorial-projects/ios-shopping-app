//
//  DecodeHelper.swift
//  shopping-app
//
//  Created by Ruben Vitt on 18.02.20.
//  Copyright © 2020 Rubeen. All rights reserved.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not locate \(file) from bundle")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Unable to load data from \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let result = try? decoder.decode(T.self, from: data) else {
            fatalError("Unable to decode \(file) from bundle")
        }
        
        return result
    }
}
