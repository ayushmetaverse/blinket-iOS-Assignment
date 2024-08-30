import SwiftUI

struct SeachNavBar: View {
    
    
    var body: some View {
        HStack {
                    Image(systemName: "arrow.left")
                        .foregroundColor(.black)
                        .padding(.trailing, 20)

                    Text("Sauces and spread")
                        .font(.headline)
                        .foregroundColor(.black)

                    Spacer()

                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                        .padding(.trailing, 10)
                }
                .padding(.horizontal)
                .padding(.vertical, 12)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                .padding(.horizontal)
    }
}

extension UIApplication {
    func endEditing() {
        self.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#Preview{
    SeachNavBar()
}
