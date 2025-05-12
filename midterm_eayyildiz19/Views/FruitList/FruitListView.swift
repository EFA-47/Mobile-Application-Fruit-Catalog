//
//  FruitListView.swift
//  midterm_eayyildiz19
//
//  Created by Emir Fatih AYYILDIZ on 3.12.2023.
//

import SwiftUI

struct FruitListView: View {

    @StateObject private var viewModel = FruitListViewModel()

    var body: some View {
        if viewModel.isLoading {
            LoadingView()
                .onAppear {
                    viewModel.loadFruitList()
                }
        } else {
            NavigationView{
                List(viewModel.fruitList, id: \.self) { fruit in
                    NavigationLink(
                        destination: FruitDetailView(fruitId: fruit.id),
                        label: {
                            FruitRowView(fruit: fruit)
                        }
                    )
                }
                .navigationTitle("Fruits")
            }

        }
    }
}

#Preview {
    FruitListView()
}
