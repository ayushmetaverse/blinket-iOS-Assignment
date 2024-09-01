import SwiftUI

struct ImageTextComponent: View {
    
    let imageName: String
    let title: String
    let isSelected: Bool

    var body: some View {
        VStack {
            // Image
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 42, height: 42)
                            .background(
                                           Circle().fill(isSelected ? Color(red: 0.85, green: 0.95, blue: 0.85) : Color.white)
                                       )
                            .clipShape(Circle())
                            .shadow(radius: 10)
                            .padding(.bottom, 3)
                            .scaleEffect(isSelected ? 1.2 : 1.0)  // Pop out effect
                            .animation(.spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0.5), value: isSelected)
                            
                        
            // Text
            Text(title)
                .font(.footnote)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .lineLimit(2)
        }
        .frame(width: 63)
        .padding(7)
        .background(
            VStack(alignment: .trailing) {
                if isSelected {
                    Color.green
                        .frame(width: 5)
                        .cornerRadius(50)
                        .padding(.leading, 75)
                }
            }
        )
    }
}




struct ImageTextComponent_Previews: PreviewProvider {
    static var previews: some View {
        ImageTextComponent(imageName: "magggi1", title: "Tomato Ketchup", isSelected: true)
            .previewLayout(.sizeThatFits)
    }
    }
    
    
    
