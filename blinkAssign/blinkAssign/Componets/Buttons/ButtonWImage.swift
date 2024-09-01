import SwiftUI

struct ButtonWImage: View {
    var title: String
    var rightIcon: String
    var backgroundColor: Color
    
    var body: some View {
        HStack {
            
            Image(rightIcon)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20) // Adjust the size to fit inside the button
                .padding(.trailing, 4) // Add some spacing between the image and text
            
            
            Text(title)
                .font(.system(size: 14, weight: .regular)) // Blinkit-style font
            
        }
        .padding(.horizontal, 8) // Adjusted for a more compact layout
        .padding(.vertical, 7) // Adjusted for a more compact layout
        .background(backgroundColor) // Set background color
        .cornerRadius(6) // Adjusted corner radius for Blinkit style
        .overlay(
            RoundedRectangle(cornerRadius: 6)
                .stroke(Color.black.opacity(0.1), lineWidth: 1) // Light black frame
        )
    }
}

struct ButtonWImage_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWImage(
            title: "Brand",
            rightIcon: "ketchup",
            backgroundColor: Color.white
        )
        .previewLayout(.sizeThatFits)
    }
}
