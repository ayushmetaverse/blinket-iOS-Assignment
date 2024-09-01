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
                    
                }) {
                    Text("ADD")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(.green)
                        .padding(.horizontal, 6)
                        .padding(.vertical, 2)
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
                    .font(.system(size: 7))
                    .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.55))
                
                Text(product.title)
                    .font(.system(size: 9, weight: .bold))
                    .lineLimit(2)
                
                Text("⏱ \(product.deliveryTime) MINS")
                    .font(.system(size: 9))
                    .foregroundColor(.gray)
                
                HStack {
                    Text("₹\(product.price, specifier: "%.2f")")
                        .font(.system(size: 14, weight: .bold))
                    Spacer()
                    Text("7% OFF")
                        .font(.system(size: 10))
                        .foregroundColor(.green)
                }
            }
            .padding([.horizontal, .bottom], 6)
        }
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: .gray.opacity(0.2), radius: 4, x: 0, y: 2)
        .frame(width: 140)
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
