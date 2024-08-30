import SwiftUI

struct ImageTextComponent: View {
    
    let imageName: String
    let title: String

    var body: some View {
        VStack {
            // Image
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 42, height: 42) // 30% smaller
                .clipShape(Circle())
                .shadow(radius: 10)
                .padding(.bottom, 3) // Reduced padding
            
            // Text
            Text(title)
                .font(.footnote)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .lineLimit(2) // Allow text to wrap up to 2 lines

        }
        .frame(width: 63) // 30% smaller
        .padding(7) // Reduced padding
    }
}

struct ImageTextComponent_Previews: PreviewProvider {
    static var previews: some View {
        ImageTextComponent(imageName: "ketchup", title: "Tomato Ketchup")
            .previewLayout(.sizeThatFits)
    }
}
