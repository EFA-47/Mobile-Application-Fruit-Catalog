//
//  FruitRowView.swift
//  midterm_eayyildiz19
//
//  Created by Emir Fatih AYYILDIZ on 3.12.2023.
//

import SwiftUI

struct FruitRowView: View {

    private let fruit: Fruit

    init(fruit: Fruit) {
        self.fruit = fruit
    }

    var body: some View {
        HStack(spacing: .zero) {
            Text(fruit.name)
            Spacer()
            Text(fruit.family)
        }
    }
}
