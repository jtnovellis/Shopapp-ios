//
//  ProductDetailView.swift
//  Shopapp
//
//  Created by Jairo Jair Toro Novellis on 20/02/23.
//

import SwiftUI
import Kingfisher

struct ProductDetailView: View {
    var product: Product

    var body: some View {
        VStack {
            Text("\(product.title)")
                .font(.largeTitle)
            KFImage(URL(string: product.images[0]))
                .resizable()
                .scaledToFit()
            HStack{
                Text("Price: \(product.price)")
                Spacer()
                Text("Category: \(product.category.name.rawValue)")
            }.padding()
            Divider()
            VStack(alignment: .leading) {
                Text("Description:")
                    .font(.title)
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 10, trailing: 0))
                Text("\(product.description)")
    
            }.frame(maxWidth: .infinity)
            Spacer()
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: Product(id: 4, title: "Handmade Fresh Table", price: 687, description: "Andy shoes are designed to keeping in live america des", images: [
            "https://placeimg.com/640/480/any?r=0.9178516507833767",
            "https://placeimg.com/640/480/any?r=0.9300320592588625",
            "https://placeimg.com/640/480/any?r=0.8807778235430017"
        ], creationAt: "2023-02-20T22:05:21.000Z", updatedAt: "2023-02-20T22:05:21.000Z", category: Category(id: 5, name: Name.others, image: "https://placeimg.com/640/480/any?r=0.591926261873231", creationAt:  "2023-02-20T22:05:21.000Z", updatedAt:  "2023-02-20T22:05:21.000Z")))
    }
}
