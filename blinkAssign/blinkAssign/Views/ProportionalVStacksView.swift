//import SwiftUI
//
//struct ProportionalVStacksView: View {
//    var body: some View {
//        GeometryReader { geometry in
//            HStack(spacing: 0) {
//                VStack {
//                    // 1st VStack content
//                    
//                    ScrollView{
//                        ImageTextComponent(imageName: "ketchup", title: "Tomato Ketchup")
//                        ImageTextComponent(imageName: "ketchup", title: "Tomato Ketchup")
//                        ImageTextComponent(imageName: "ketchup", title: "Tomato Ketchup")
//                        ImageTextComponent(imageName: "ketchup", title: "Tomato Ketchup")
//                        ImageTextComponent(imageName: "ketchup", title: "Tomato Ketchup")
//                        ImageTextComponent(imageName: "ketchup", title: "Tomato Ketchup")
//                        ImageTextComponent(imageName: "ketchup", title: "Tomato Ketchup")
//                       
//                    }
//                    .scrollIndicators(.never)
//                    
//                    
//                }
//                .frame(width: geometry.size.width * 0.15) // 15% of the screen width
//                
//                VStack {
//                    
//                    // HStack takes up 10% of the total height
//                                    HStack {
//                                        Text("HStack - 10%")
//                                            .frame(maxWidth: .infinity)
//                                            .frame(maxHeight: .infinity)
//                                            .background(Color.blue)
//                                    }
//                                    .frame(height: geometry.size.height * 0.1) // 10% of the total height
//
//                                    // VStack takes up the remaining 90% of the total height
//                                    VStack {
//                                        Text("VStack - 90%")
//                                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                                            .background(Color.green)
//                                    }
//                                    .frame(height: geometry.size.height * 0.9) 
//                }
//                .frame(width: geometry.size.width * 0.85) // 85% of the screen width
//            }
//        }
//        .edgesIgnoringSafeArea(.all) // Optional: make sure the view uses the full screen width
//    }
//}
//
//struct ProportionalVStacksView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProportionalVStacksView()
//            .previewLayout(.sizeThatFits)
//    }
//}



import SwiftUI

struct ProportionalVStacksView: View {
    // Example data array
    let products: [Product] = [
          Product(imageName: "ketchup", title: "Tomato Ketchup", price: 50, deliveryTime: 10, quantity: 500, productType: "Tomato"),
          Product(imageName: "ketchup", title: "Mustard Sauce", price: 60, deliveryTime: 15, quantity: 300, productType: "Mustard"),
          Product(imageName: "ketchup", title: "Mayonnaise", price: 70, deliveryTime: 20, quantity: 250, productType: "Egg"),
          Product(imageName: "ketchup", title: "Tomato Ketchup", price: 50, deliveryTime: 10, quantity: 500, productType: "Tomato"),
          Product(imageName: "ketchup", title: "Mustard Sauce", price: 60, deliveryTime: 15, quantity: 300, productType: "Mustard"),
          Product(imageName: "ketchup", title: "Mayonnaise", price: 70, deliveryTime: 20, quantity: 250, productType: "Egg"),
          
          // Add more products as needed
      ]

    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                
                // First VStack with a ScrollView
                VStack {
                    ScrollView(showsIndicators: false) {
                        ForEach(products, id: \.title) { product in
                            ImageTextComponent(imageName: product.imageName, title: product.title)
                        }
                    }
                }
                .frame(width: geometry.size.width * 0.15) // 15% of the screen width
                
                // Second VStack with nested HStack and VStack
                VStack(spacing: 0) {
                    // HStack takes up 10% of the total height
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) { // Add spacing between buttons if needed
                                SortButton(
                                    title: "Sort",
                                    leftIcon: "arrow.up.arrow.down",
                                    rightIcon: "chevron.down",
                                    backgroundColor: Color(.white)
                                )
                                
                                SortButton(
                                    title: "Sort",
                                    leftIcon: "arrow.up.arrow.down",
                                    rightIcon: "chevron.down",
                                    backgroundColor: Color(.white)
                                )
                                
                                SortButton(
                                    title: "Sort",
                                    leftIcon: "arrow.up.arrow.down",
                                    rightIcon: "chevron.down",
                                    backgroundColor: Color(.white)
                                )
                                // Add more SortButton instances as needed
                            }
                            .padding(.horizontal) // Add padding for the horizontal scroll view
                        }
                    }

                    .frame(height: geometry.size.height * 0.06)
                    
                    // VStack takes up the remaining 90% of the total height
                    VStack {
                        ProductGridView(products: [
                            Product(imageName: "ketchup", title: "Kissan Sweet & Spicy Tomato Ketchup", price: 80, deliveryTime: 12, quantity: 415, productType: "Sweet & Spicy"),
                            Product(imageName: "ketchup", title: "Kissan Sweet & Spicy Tomato Ketchup", price: 80, deliveryTime: 12, quantity: 415, productType: "Sweet & Spicy"),
                            Product(imageName: "ketchup", title: "Kissan Sweet & Spicy Tomato Ketchup", price: 80, deliveryTime: 12, quantity: 415, productType: "Sweet & Spicy"),
                            Product(imageName: "ketchup", title: "Kissan Sweet & Spicy Tomato Ketchup", price: 80, deliveryTime: 12, quantity: 415, productType: "Sweet & Spicy"),
                            Product(imageName: "ketchup", title: "Kissan Sweet & Spicy Tomato Ketchup", price: 80, deliveryTime: 12, quantity: 415, productType: "Sweet & Spicy"),
                            // Add more sample products here
                        ])
                    }
                    .frame(height: geometry.size.height * 0.94)
                }
                .frame(width: geometry.size.width * 0.85) // 85% of the screen width
            }
        }
        .edgesIgnoringSafeArea(.all) // Use full screen width
    }
}



struct ProportionalVStacksView_Previews: PreviewProvider {
    static var previews: some View {
        ProportionalVStacksView()
            .previewLayout(.sizeThatFits)
    }
}
