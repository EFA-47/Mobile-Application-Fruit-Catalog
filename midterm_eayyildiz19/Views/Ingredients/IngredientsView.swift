//
//  IngredientsView.swift
//  midterm_eayyildiz19
//
//  Created by Emir Fatih AYYILDIZ on 3.12.2023.
//

import SwiftUI

struct IngredientsView: View {
    
    let nutritions: Fruit.Nutritions

    var body: some View {
        List {
            Text("Calories: \(nutritions.calories)")
            Text("Fat: \(nutritions.fat)")
            Text("Sugar: \(nutritions.sugar)")
            Text("Carbohydrates: \(nutritions.carbohydrates)")
            Text("Protein: \(nutritions.protein)")
        }
        .navigationTitle("Ingredients")
    }
}


