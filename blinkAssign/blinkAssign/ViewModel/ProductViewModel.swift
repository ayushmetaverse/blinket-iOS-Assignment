import SwiftUI

class ProductViewModel: ObservableObject {
    @Published var selectedCategory: String = "Noodles"
    
    // Example data array
    let products: [Product] = [
        // Noodles
        Product(imageName: "magggi1", title: "Noodles", price: 20, deliveryTime: 5, quantity: 200, productType: "Noodles"),
        
        // Rice
        Product(imageName: "dawat", title: "Rice", price: 500, deliveryTime: 60, quantity: 10000, productType: "Rice"),

        // Fruits
        Product(imageName: "mangoes1", title: "Fruits", price: 1000, deliveryTime: 45, quantity: 100, productType: "Fruit"),

        // Ice Cream
        Product(imageName: "amulic1", title: "Desert", price: 150, deliveryTime: 30, quantity: 1000, productType: "Ice Cream"),

        // Dairy
        Product(imageName: "amulic3", title: "Dairy", price: 50, deliveryTime: 15, quantity: 500, productType: "Dairy"),

        // Snacks
        Product(imageName: "homi1", title: "Snacks", price: 20, deliveryTime: 5, quantity: 100, productType: "Snacks"),


        // Flour
        Product(imageName: "ashir1", title: "Atta", price: 300, deliveryTime: 45, quantity: 5000, productType: "Flour"),

        // Sauces
        Product(imageName: "chili1", title: "Sauce", price: 100, deliveryTime: 20, quantity: 200, productType: "Sauce")
    ]
    
    func getProducts(for category: String) -> [Product] {
        switch category {
        case "Noodles":
            return [
                Product(imageName: "magggi1", title: "Maggi Noodles 1", price: 20, deliveryTime: 5, quantity: 200, productType: "Noodles"),
                Product(imageName: "magggi2", title: "Maggi Noodles 2", price: 25, deliveryTime: 6, quantity: 220, productType: "Noodles"),
                Product(imageName: "magggi3", title: "Maggi Noodles 3", price: 30, deliveryTime: 7, quantity: 250, productType: "Noodles"),
                Product(imageName: "magggi4", title: "Maggi Noodles 4", price: 35, deliveryTime: 8, quantity: 280, productType: "Noodles"),
                Product(imageName: "topramen", title: "Top Ramen Noodles", price: 25, deliveryTime: 5, quantity: 200, productType: "Noodles"),
                Product(imageName: "topramen1", title: "Top Ramen Spicy", price: 30, deliveryTime: 7, quantity: 220, productType: "Noodles"),
                Product(imageName: "yippee1", title: "Yippee Noodles 1", price: 20, deliveryTime: 5, quantity: 200, productType: "Noodles"),
                Product(imageName: "yippee211", title: "Yippee Noodles 2", price: 25, deliveryTime: 6, quantity: 220, productType: "Noodles"),
                Product(imageName: "yippee3", title: "Yippee Noodles 3", price: 30, deliveryTime: 7, quantity: 250, productType: "Noodles"),
            ]
        case "Fruit":
            return [
                Product(imageName: "mangoes1", title: "Alphonso Mangoes", price: 1000, deliveryTime: 45, quantity: 100, productType: "Fruit"),
                Product(imageName: "mangoes2", title: "Badami Mangoes", price: 900, deliveryTime: 40, quantity: 150, productType: "Fruit"),
                Product(imageName: "mangoes3", title: "Kesar Mangoes", price: 800, deliveryTime: 35, quantity: 200, productType: "Fruit"),
            ]
        case "Ice Cream":
            return [
                Product(imageName: "amulic1", title: "Amul Chocolate Brownie", price: 150, deliveryTime: 30, quantity: 1000, productType: "Ice Cream"),
                Product(imageName: "amulic2", title: "Amul Vanilla Tub", price: 120, deliveryTime: 25, quantity: 1000, productType: "Ice Cream"),
                Product(imageName: "corneto1", title: "Corneto Ice Cream 1", price: 70, deliveryTime: 20, quantity: 150, productType: "Ice Cream"),
                Product(imageName: "corneto2", title: "Corneto Ice Cream 2", price: 75, deliveryTime: 22, quantity: 170, productType: "Ice Cream"),
                Product(imageName: "corneto3", title: "Corneto Ice Cream 3", price: 80, deliveryTime: 25, quantity: 200, productType: "Ice Cream"),
                Product(imageName: "ice1", title: "Ice Cream 1", price: 50, deliveryTime: 10, quantity: 500, productType: "Ice Cream"),
                Product(imageName: "ice2", title: "Ice Cream 2", price: 55, deliveryTime: 12, quantity: 550, productType: "Ice Cream"),
                Product(imageName: "ice3", title: "Ice Cream 3", price: 60, deliveryTime: 15, quantity: 600, productType: "Ice Cream"),
            ]
        case "Dairy":
            return [
                Product(imageName: "amulic3", title: "Amul Butter", price: 50, deliveryTime: 15, quantity: 500, productType: "Dairy")
            ]
        case "Snacks":
            return [
                Product(imageName: "homi1", title: "Homi Snacks 1", price: 20, deliveryTime: 5, quantity: 100, productType: "Snacks"),
                Product(imageName: "homi2", title: "Homi Snacks 2", price: 25, deliveryTime: 6, quantity: 120, productType: "Snacks"),
                Product(imageName: "homi3", title: "Homi Snacks 3", price: 30, deliveryTime: 7, quantity: 150, productType: "Snacks"),
                Product(imageName: "homi4", title: "Homi Snacks 4", price: 35, deliveryTime: 8, quantity: 180, productType: "Snacks"),
            ]
        case "Rice":
                    return [
                        Product(imageName: "dawat", title: "Daawat Basmati Rice", price: 500, deliveryTime: 60, quantity: 10000, productType: "Rice"),
                        Product(imageName: "dawat2", title: "Dawat White Rice", price: 520, deliveryTime: 55, quantity: 11000, productType: "Rice"),
                        Product(imageName: "dawat1", title: "Dawat Brown Rice", price: 550, deliveryTime: 65, quantity: 12000, productType: "Rice"),
                    ]
                case "Flour":
                    return [
                        Product(imageName: "ashir1", title: "Aashirvaad Atta", price: 300, deliveryTime: 45, quantity: 5000, productType: "Flour"),
                        Product(imageName: "ashir2", title: "Pillsbury Atta", price: 280, deliveryTime: 40, quantity: 4800, productType: "Flour"),
                        Product(imageName: "mahi2", title: "Golden Harvest Atta", price: 270, deliveryTime: 38, quantity: 4700, productType: "Flour"),
                    ]
                case "Sauce":
                    return [
                        Product(imageName: "chili1", title: "Chili Sauce", price: 100, deliveryTime: 20, quantity: 200, productType: "Sauce"),
                        Product(imageName: "ketchup", title: "Tomato Ketchup", price: 120, deliveryTime: 25, quantity: 250, productType: "Sauce"),
                        Product(imageName: "chili2", title: "Green Chilli Sauce", price: 150, deliveryTime: 30, quantity: 300, productType: "Sauce"),
                    ]
                default:
                    return []
                }
            }
}


