import SwiftUI

struct ProductGridView: View {
    let viewModel: ProductViewModel
    let products: [Product]
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    init(products: [Product], vm: ProductViewModel) {
        self.products = products
        self.viewModel = vm
    }
    var body: some View {
        ScrollView {
                
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(products) { product in
                        ProductCardView(product: product)
                        
                    }
                }
                .padding(.all)
                .background(
                    GeometryReader { geo -> Color in
                        let minY = geo.frame(in: .global).minY
                        DispatchQueue.main.async {
                            if minY > 320  {
                                self.viewModel.selectedCategory = "Noodles"
                                
                                
                            } else if minY < -455  {
                                
                                self.viewModel.selectedCategory = "Rice"
                                
                            }
                        }
                        return Color.clear
                    }
                )
        }
    }
}






