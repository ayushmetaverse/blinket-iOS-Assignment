import SwiftUI

struct CompactBlinkitComponent: View {
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Image(systemName: "cart")
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24) // Smaller icon size
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(5) // Smaller corner radius
                .padding(.leading, 5) // Smaller leading padding
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Free Delivery")
                    .font(.system(size: 14, weight: .bold)) // Smaller headline font size
                    .foregroundColor(.black)
                
                Text("On Orders above ₹750 | Use code: FRDL750 ▸")
                    .font(.system(size: 10)) // Smaller subheadline font size
                    .foregroundColor(.gray)
                    .padding(.trailing, 70) // Smaller trailing padding
            }
        }
        .padding(8) // Smaller padding around the HStack
        .background(Color.white)
        .cornerRadius(8) // Smaller corner radius for the background
        .shadow(radius: 3) // Lighter shadow for a more subtle effect
    }
}


struct CompactBlinkitComponent_Previews: PreviewProvider {
    static var previews: some View {
        CompactBlinkitComponent()
            .previewLayout(.sizeThatFits)
    }
}
