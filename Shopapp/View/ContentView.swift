//
//  ContentView.swift
//  Shopapp
//
//  Created by Jairo Jair Toro Novellis on 20/02/23.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
    @ObservedObject var products = ProductViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(products.productsData, id: \.id) { product in
                    NavigationLink {
                        EmptyView()
                    } label: {
                        HStack {
                            KFImage(URL(string: product.images[0]))
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90, height: 90)
                            VStack(alignment: .leading) {
                                Text(product.title)
                                    .font(.title2)
                                    .foregroundColor(.gray)
                                HStack {
                                    Text("Price")
                                        .foregroundColor(.gray)
                                        .fontWeight(.bold)
                                    Text("\(product.price)")
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Products")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
