//
//  ContentView.swift
//  shopping-app
//
//  Created by Ruben Vitt on 18.02.20.
//  Copyright © 2020 Rubeen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let catalog = Bundle.main.decode([Category].self, from: "Catalog.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(catalog) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.products) { product in
                            ProductRow(product: product)
                        }
                    }
                }
            }
            .navigationBarTitle("Catalog")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
