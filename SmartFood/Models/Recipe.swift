//
//  Recipe.swift
//  SmartFood
//
//  Created by Francis Lavallée on 2022-03-11.
//

import Foundation

struct Recipe: Identifiable, Codable {
    let id: UUID
    let name: String
    let preparationTime: Int
    let servings: Int
    let ingredients: String
    let description: String
    let category: Category
    let photo: String
    //let createdAt: Date
    //let updatedAt: Date
}
