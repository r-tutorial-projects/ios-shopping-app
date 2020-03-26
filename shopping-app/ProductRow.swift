//
//  ProductRow.swift
//  shopping-app
//
//  Created by Ruben Vitt on 18.02.20.
//  Copyright © 2020 Rubeen. All rights reserved.
//

import SwiftUI

struct ProductRow: View {
    var product: Product
    
    var body: some View {
        HStack {
            Image(product.previewImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(.black, lineWidth: 1))
                .shadow(radius: 5)
            VStack {
                Text(product.name)
                Text(product.price)
            }
        }
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: Product.exampleProduct)
    }
}
