//
//  FruitDetailModelView.swift
//  midterm_eayyildiz19
//
//  Created by Emir Fatih AYYILDIZ on 3.12.2023.
//

import Foundation

class FruitDetailViewModel: ObservableObject {
    @Published var detailedFruit: Fruit?
    @Published var isLoading = false

    func loadFruitDetail(fruitId: Int) {
        isLoading = true
        let url = URL(string: "https://fruityvice.com/api/fruit/\(fruitId)")!

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print("Error loading fruit detail: \(error?.localizedDescription ?? "Unknown error")")
                return
            }

            do {
                let decodedFruit = try JSONDecoder().decode(Fruit.self, from: data)
                DispatchQueue.main.async {
                    self.detailedFruit = decodedFruit
                    self.isLoading = false
                }
            } catch {
                print("Error decoding fruit detail: \(error.localizedDescription)")
            }
        }.resume()
    }
}
