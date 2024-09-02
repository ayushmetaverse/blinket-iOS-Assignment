import SwiftUI

struct ShimmerViewModifier: ViewModifier {
    @State private var phase: CGFloat = 0
    
    func body(content: Content) -> some View {
        content
            .redacted(reason: .placeholder)
            .overlay(
                LinearGradient(gradient: Gradient(colors: [.clear, .white.opacity(0.5), .clear]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .rotationEffect(.degrees(30))
                    .offset(x: phase * 200, y: phase * 200)
                    .mask(content)
            )
            .onAppear {
                withAnimation(Animation.linear(duration: 1.5).repeatForever(autoreverses: false)) {
                    phase = 1
                }
            }
    }
}

extension View {
    func shimmer() -> some View {
        self.modifier(ShimmerViewModifier())
    }
}
