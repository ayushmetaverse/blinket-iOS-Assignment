import SwiftUI

struct Product: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var price: Double
    var deliveryTime: Int
    var quantity: Int
    var productType: String
}
