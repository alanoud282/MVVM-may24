//
//  ItemModel.swift
//  MVVM
//
//  Created by ساره المرشد on 24/05/2023.
//

import Foundation

struct Item: Identifiable, Codable {
    var id = UUID()
    var name: String
    var description: String
    
    static var exampleItem = Item(name: "Xbox", description: "Sample description")
}
