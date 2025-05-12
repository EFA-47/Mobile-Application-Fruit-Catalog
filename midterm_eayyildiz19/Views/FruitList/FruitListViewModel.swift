//
//  FruitListViewModel.swift
//  midterm_eayyildiz19
//
//  Created by Emir Fatih AYYILDIZ on 3.12.2023.
//

import Foundation

class FruitListViewModel: ObservableObject {

    @Published var isLoading = true
    @Published var fruitList: [Fruit] = []
    private var dataSource = FruitDataSource()

    init() {
        dataSource.delegate = self
    }

    func loadFruitList() {
        dataSource.loadFruitList()
    }
    
}

extension FruitListViewModel: FruitDataSourceDelegate {

    func fruitListLoaded(fruitList: [Fruit]) {
        isLoading = false
        self.fruitList = fruitList
    }
}
