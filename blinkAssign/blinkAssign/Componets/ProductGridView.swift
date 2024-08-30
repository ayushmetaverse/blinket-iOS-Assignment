import SwiftUI

struct ProductGridView: View {
    let products: [Product]
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(products) { product in
                    ProductCardView(product: product)
                }
            }
            .padding(.all)
        }
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView(products: [
            Product(imageName: "ketchup", title: "Kissan Sweet & Spicy Tomato Ketchup", price: 80, deliveryTime: 12, quantity: 415, productType: "Sweet & Spicy"),
            Product(imageName: "ketchup", title: "Kissan Sweet & Spicy Tomato Ketchup", price: 80, deliveryTime: 12, quantity: 415, productType: "Sweet & Spicy"),
            Product(imageName: "ketchup", title: "Kissan Sweet & Spicy Tomato Ketchup", price: 80, deliveryTime: 12, quantity: 415, productType: "Sweet & Spicy"),
            Product(imageName: "ketchup", title: "Kissan Sweet & Spicy Tomato Ketchup", price: 80, deliveryTime: 12, quantity: 415, productType: "Sweet & Spicy"),
            Product(imageName: "ketchup", title: "Kissan Sweet & Spicy Tomato Ketchup", price: 80, deliveryTime: 12, quantity: 415, productType: "Sweet & Spicy"),
            // Add more sample products here
        ])
    }
}
