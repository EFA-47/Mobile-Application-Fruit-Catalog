//
//  FruitDataSource.swift
//  midterm_eayyildiz19
//
//  Created by Emir Fatih AYYILDIZ on 3.12.2023.
//

import Foundation

struct FruitDataSource {

    private let baseURL = "https://fruityvice.com/api"
    var delegate: FruitDataSourceDelegate?

    func loadFruitList() {
        let session = URLSession.shared

        if let url = URL(string: "\(baseURL)/fruit/all") {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            let dataTask = session.dataTask(with: request) { data, response, error in
                guard let data else { return }
                let decoder = JSONDecoder()
                do {
                    let fruitList = try decoder.decode([Fruit].self, from: data)
                    DispatchQueue.main.async {
                        delegate?.fruitListLoaded(fruitList: fruitList)
                    }
                } catch {
                    print(error)
                }
            }
            dataTask.resume()
        }
    }
}
