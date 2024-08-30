//import SwiftUI
//
//struct ProductCardView: View {
//    let product: Product
//
//    var body: some View {
//        VStack(alignment: .leading) {
//            // Image of the product
//            VStack {
//                Image(product.imageName)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 100, height: 100) // Adjusted size
//                    .cornerRadius(8)
//                    .padding(.bottom, 4)
//                    .padding(.leading, 15)
//                
//                Button(action: {
//                    // Handle add to cart action
//                }) {
//                    Text("ADD")
//                            .font(.headline)
//                            .foregroundColor(.green)
//                            .padding(.horizontal, 12)
//                            .padding(.vertical, 4)
//                            .background(Color.white)
//                            .cornerRadius(4)
//                            .overlay(
//                                RoundedRectangle(cornerRadius: 4)
//                                    .stroke(Color.green, lineWidth: 1)
//                            )
//                            .padding(.leading, 118) // Adjusted to fit smaller image
//                }
//            }
//            
//            
//            // Product Type and Quantity
//            Text("\(product.quantity) g • \(product.productType)")
//                .font(.subheadline)
//                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.55))
//                .padding(.bottom, 2)
//            
//            // Product Title
//            Text(product.title)
//                .font(.headline)
//                .padding(.bottom, 2)
//            
//            
//            // Delivery Time
//            Text("⏱ \(product.deliveryTime) MINS")
//                .font(.subheadline)
//                .foregroundColor(.gray)
//                .padding(.bottom, 4)
//            
//            // Price
//            HStack {
//                Text("₹\(product.price, specifier: "%.2f")")
//                    .font(.title3)
//                    .bold()
//                Spacer()
//                
//            }
//        }
//        .padding(8) // Reduced padding
//        .background(Color.white)
//        .cornerRadius(8) // Adjusted corner radius
//        .shadow(radius: 2) // Reduced shadow
//        .frame(width: 200) // Adjusted width to make it appear smaller
//        .padding()
//    }
//}
//
//struct ProductCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductCardView(product: Product(imageName: "ketchup", title: "Kissan Sweet & Spicy Tomato Ketchup", price: 80, deliveryTime: 12, quantity: 415, productType: "Sweet & Spicy"))
//            .previewLayout(.sizeThatFits)
//    }
//}


//import SwiftUI
//
//struct ProductCardView: View {
//    let product: Product
//
//    var body: some View {
//        VStack(alignment: .leading, spacing: 4) { // Reduced spacing between elements
//            // Image of the product
//            ZStack {
//                Image(product.imageName)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 100, height: 100) // Reduced size
//                    .cornerRadius(6) // Adjusted corner radius
//                    .padding(.bottom, 2)
//                    .padding(.leading, 8) // Reduced padding
//                
//                Button(action: {
//                    // Handle add to cart action
//                }) {
//                    Text("ADD")
//                        .font(.caption) // Smaller font size
//                        .foregroundColor(.green)
//                        .padding(.horizontal, 8) // Reduced padding
//                        .padding(.vertical, 2)
//                        .background(Color.white)
//                        .cornerRadius(3)
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 3)
//                                .stroke(Color.green, lineWidth: 1)
//                        )
//                        .padding(.leading, 72)
////                        .padding(.vertical, 172)
//                }
//            }
//
//            // Product Type and Quantity
//            Text("\(product.quantity) g • \(product.productType)")
//                .font(.footnote) // Smaller font size
//                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.55))
//                .padding(.bottom, 1)
//            
//            // Product Title
//            Text(product.title)
//                .font(.subheadline) // Smaller font size
//                .padding(.bottom, 1)
//            
//            // Delivery Time
//            Text("⏱ \(product.deliveryTime) MINS")
//                .font(.footnote)
//                .foregroundColor(.gray)
//                .padding(.bottom, 2)
//            
//            // Price
//            HStack {
//                Text("₹\(product.price, specifier: "%.2f")")
//                    .font(.headline) // Reduced font size
//                    .bold()
//                Spacer()
//            }
//        }
//        .padding(6) // Reduced padding
//        .background(Color.white)
//        .cornerRadius(6) // Adjusted corner radius
//        .shadow(radius: 1) // Reduced shadow
//        .frame(width: 130) // Reduced width
//        .padding()
//    }
//}
//
//struct ProductCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductCardView(product: Product(imageName: "ketchup", title: "Kissan Sweet & Spicy Tomato Ketchup", price: 80, deliveryTime: 12, quantity: 415, productType: "Sweet & Spicy"))
//            .previewLayout(.sizeThatFits)
//    }
//}



import SwiftUI

struct ProductCardView: View {
    let product: Product

    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            ZStack(alignment: .topTrailing) {
                Image(product.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 130)
                    .cornerRadius(6)
                
                Button(action: {
                    // Handle add to cart action
                }) {
                    Text("ADD")
                        .font(.system(size: 12, weight: .bold)) // Smaller font size
                        .foregroundColor(.green)
                        .padding(.horizontal, 6)
                        .padding(.vertical, 2) // Less vertical padding
                        .background(Color.white)
                        .cornerRadius(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color.green, lineWidth: 1)
                        )
                }
                .offset(x: 1, y: 110)
            }
            
            VStack(alignment: .leading, spacing: 1) {
                Text("\(product.quantity) g • \(product.productType)")
                    .font(.system(size: 7)) // Smaller font size
                    .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.55))
                
                Text(product.title)
                    .font(.system(size: 9, weight: .bold)) // Smaller font size
                    .lineLimit(2)
                
                Text("⏱ \(product.deliveryTime) MINS")
                    .font(.system(size: 9)) // Smaller font size
                    .foregroundColor(.gray)
                
                HStack {
                    Text("₹\(product.price, specifier: "%.2f")")
                        .font(.system(size: 14, weight: .bold)) // Smaller font size
                    Spacer()
                    Text("7% OFF")
                        .font(.system(size: 10)) // Smaller font size
                        .foregroundColor(.green)
                }
            }
            .padding([.horizontal, .bottom], 6) // Less padding
        }
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: .gray.opacity(0.2), radius: 4, x: 0, y: 2)
        .frame(width: 140) // Slightly reduced width
        .padding(.horizontal, 4)
        .padding(.vertical, 2)
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: Product(imageName: "ketchup", title: "Kissan Sweet & Spicy Tomato Ketchup", price: 83, deliveryTime: 12, quantity: 250, productType: "Schezwan Chutney"))
            .previewLayout(.sizeThatFits)
    }
}
