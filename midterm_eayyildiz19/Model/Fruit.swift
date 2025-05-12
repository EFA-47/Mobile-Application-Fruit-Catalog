//
//  Fruit.swift
//  midterm_eayyildiz19
//
//  Created by Emir Fatih AYYILDIZ on 3.12.2023.
//

import Foundation

struct Fruit: Codable, Equatable, Hashable {


    let name: String
    let id: Int
    let family: String
    var order: String = ""
    var genus: String = ""
    let nutritions: Nutritions

    struct Nutritions: Codable, Equatable, Hashable {
        let calories: Int
        let fat: Double
        let sugar: Double
        let carbohydrates: Double
        let protein: Double
    }
}
