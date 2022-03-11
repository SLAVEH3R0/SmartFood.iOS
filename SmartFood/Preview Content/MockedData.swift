//
//  MockedData.swift
//  SmartFood
//
//  Created by Francis Lavallée on 2022-03-11.
//

import Foundation

extension Category{
    static let preview = Category(id: UUID(), name: "Dessert")
}

extension Recipe {
    static let preview = Recipe(
        id: UUID(),
        name: "Chocolate Cake",
        preparationTime: 60,
        servings: 8,
        ingredients: "Chocolate, Sugar, Eggs",
        description: """
           1 - Mix all
           2 - Bake
           3 - Eat
        """,
        category: .preview,
        photo: "https://picsum.photos/id/102/400/300"
        //createdAt: Date(),
        //updatedAt: Date()
    )
}
