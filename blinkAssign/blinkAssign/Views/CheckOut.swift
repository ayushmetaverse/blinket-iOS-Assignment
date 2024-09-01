import SwiftUI

struct CheckOut: View {
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Image(systemName: "cart")
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24) 
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(5)
                .padding(.leading, 5)
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Free Delivery")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.black)
                
                Text("On Orders above ₹750 | Use code: FRDL750 ▸")
                    .font(.system(size: 10))
                    .foregroundColor(.gray)
                    .padding(.trailing, 70)
            }
        }
        .padding(8)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 3)
    }
}


struct CheckOut_Previews: PreviewProvider {
    static var previews: some View {
        CheckOut()
            .previewLayout(.sizeThatFits)
    }
}
