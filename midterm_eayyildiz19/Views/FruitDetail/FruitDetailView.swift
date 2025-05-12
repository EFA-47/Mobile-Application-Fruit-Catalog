//
//  FruitDetailView.swift
//  midterm_eayyildiz19
//
//  Created by Emir Fatih AYYILDIZ on 3.12.2023.
//

import SwiftUI

struct FruitDetailView: View {
    @ObservedObject var viewModel: FruitDetailViewModel
    @State private var isNutritionsPresented = false

    let fruitId: Int

    init(fruitId: Int) {
        self.fruitId = fruitId
        self.viewModel = FruitDetailViewModel()
    }

    var body: some View {
        VStack {
            if viewModel.isLoading {
                ProgressView()
            } else if let Fruit = viewModel.detailedFruit {
                Text("Name: \(Fruit.name)")
                Text("Family: \(Fruit.family)")
                Text("Order: \(Fruit.order)")
                Text("Genus: \(Fruit.genus)")

                Button("Nutritions") {
                                isNutritionsPresented.toggle()
                            }
                            .sheet(isPresented: $isNutritionsPresented) {
                                IngredientsView(nutritions: Fruit.nutritions)
                            }
            }
        }
        .navigationBarTitle(Text(viewModel.detailedFruit?.name ?? ""), displayMode: .inline)
        .onAppear {
            viewModel.loadFruitDetail(fruitId: fruitId)
        }
    }
}

#Preview {
    FruitDetailView(fruitId: 35)
}
