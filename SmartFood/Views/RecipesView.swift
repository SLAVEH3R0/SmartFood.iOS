//
//  ContentView.swift
//  SmartFood
//
//  Created by Francis Lavallée on 2022-03-11.
//

import SwiftUI

struct RecipesView: View {
    @StateObject var viewModel = RecipesViewModel()
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(viewModel.recipes) { recipe in
                    RecipeView(recipe: recipe)
                }
                .navigationTitle("Recipes")
            }
            .task {
                await fetchData()
            }
            .refreshable {
                await fetchData()
            }
        }
    }
}

extension RecipesView {
    func fetchData() async {
        do {
            try await viewModel.fetchRecipes()
        } catch {
            print("ERROR: \(error)")
        }
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RecipesView(viewModel: RecipesViewModel.fullState())
            
            RecipesView(viewModel: RecipesViewModel.fullState())
                .preferredColorScheme(.dark)
        }
    }
}
