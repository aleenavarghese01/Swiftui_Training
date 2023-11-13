//
//  Appetizer.swift
//  Appetizers
//
//  Created by Aleena Varghese on 13/11/23.
//

import Foundation
import SwiftUI

struct Appetizer: Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}


struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}


struct MockData {
    static let sampleAppetizer = Appetizer(id: 001,
                                           name: "Test Appetizer",
                                           description: "this is the description for the appetizer",
                                           price: 990,
                                           imageURL: "Hogs_Blanket",
                                           calories: 99,
                                           protein: 40,
                                           carbs: 5)
    
    static let appetizers = [sampleAppetizer,sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
