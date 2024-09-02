import SwiftUI

struct ProductGridView: View {
    @ObservedObject var viewModel: ProductViewModel
    let products: [Product]
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State private var lastMinY: CGFloat = 0
    @State private var isLoading: Bool = false
    
    init(products: [Product], vm: ProductViewModel) {
        self.products = products
        self.viewModel = vm
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(products) { product in
                    if isLoading {
                        ProductCardView(product: product)
                            .shimmer()  // Show shimmer effect while loading
                    } else {
                        ProductCardView(product: product)
                    }
                }
            }
            .padding(.all)
            .background(
                GeometryReader { geo -> Color in
                    let minY = geo.frame(in: .global).minY
                    
                    if abs(minY - lastMinY) > 50 {
                        DispatchQueue.main.async {
                            lastMinY = minY
                            triggerCategoryChange(minY)
                        }
                    }
                    return Color.clear
                }
            )
        }
    }
    
    private func triggerCategoryChange(_ minY: CGFloat) {
        if minY > 290 && viewModel.selectedCategory != "Noodles" {
            startShimmerAndChangeCategory(to: "Noodles")
        } else if minY < -435 && viewModel.selectedCategory != "Rice" {
            startShimmerAndChangeCategory(to: "Rice")
        }
    }
    
    private func startShimmerAndChangeCategory(to category: String) {
        isLoading = true
        
        withAnimation(.easeInOut) {
            viewModel.selectedCategory = category
        }

        // Stop shimmer effect after a short delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {  // 1 second shimmer duration
            withAnimation(.easeInOut) {
                isLoading = false
            }
        }
    }
}
