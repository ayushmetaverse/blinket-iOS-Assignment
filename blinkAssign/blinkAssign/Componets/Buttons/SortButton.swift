import SwiftUI

struct SortButton: View {
    var title: String
    var leftIcon: String
    var rightIcon: String
    var backgroundColor: Color
    
    var body: some View {
        HStack {
            Image(systemName: leftIcon)
                .font(.system(size: 10, weight: .regular))
            Text(title)
                .font(.system(size: 14, weight: .regular)) // Blinkit-style font
            Image(systemName: rightIcon)
                .font(.system(size: 10, weight: .regular))
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

struct SortButton_Previews: PreviewProvider {
    static var previews: some View {
        SortButton(
            title: "Sort",
            leftIcon: "arrow.up.arrow.down",
            rightIcon: "chevron.down",
            backgroundColor: Color.white
        )
        .previewLayout(.sizeThatFits)
    }
}
