import SwiftUI

struct ProportionalVStacksView: View {
    @StateObject private var viewModel = ProductViewModel()
    @State private var showShimmer = false
    
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                
                // First VStack with a ScrollView
                VStack {
                    ScrollView(showsIndicators: false) {
                        ForEach(viewModel.products, id: \.title) { product in
                            ImageTextComponent(
                                imageName: product.imageName,
                                title: product.title,
                                isSelected: viewModel.selectedCategory == product.productType
                            )
                            .onTapGesture {
                                withAnimation(.linear(duration: 0.3)) {
                                    viewModel.selectedCategory = product.productType
                                    showShimmer = true
                                    
                                    // Hide shimmer after 1 second
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.1) {
                                        showShimmer = false
                                    }
                                }
                            }
                        }
                    }
                }
                .frame(width: geometry.size.width * 0.15)
                
                
                VStack(spacing: 0) {
                    HStack {
                        FilterScroll()
                    }
                    .frame(height: geometry.size.height * 0.06)
                    
                    VStack {
                        ProductGridView(products: viewModel.getProducts(for: viewModel.selectedCategory), vm: viewModel)
                            .modifier(ConditionalShimmerModifier(showShimmer: showShimmer))
                    }
                    .frame(height: geometry.size.height * 0.94)
                }
                .frame(width: geometry.size.width * 0.85)
            }
        }
    }
}

struct ConditionalShimmerModifier: ViewModifier {
    var showShimmer: Bool

    func body(content: Content) -> some View {
        if showShimmer {
            content.shimmer()
        } else {
            content
        }
    }
}

struct ProportionalVStacksView_Previews: PreviewProvider {
    static var previews: some View {
        ProportionalVStacksView()
    }
}
