//
//  ProductViewModel.swift
//  Shopapp
//
//  Created by Jairo Jair Toro Novellis on 20/02/23.
//

import Foundation

class ProductViewModel: ObservableObject {
    @Published var productsData = [Product]()
    
    init() {
        let url = URL(string: "https://api.escuelajs.co/api/v1/products")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request) { data, response, error in
            do {
                if let jsonData = data {
                    print("Size of json \(jsonData)")
                    let decodeData = try JSONDecoder().decode([Product].self, from: jsonData)
                    DispatchQueue.main.async {
                        self.productsData.append(contentsOf: decodeData)
                    }
                }
            } catch {
                print("this the error, \(error)")
            }
        }.resume()
    }
}
