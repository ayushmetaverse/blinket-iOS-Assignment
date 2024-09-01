import SwiftUI

struct FilterScroll: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                SortButton(
                    title: "Sort",
                    leftIcon: "arrow.up.arrow.down",
                    rightIcon: "chevron.down",
                    backgroundColor: Color(.white)
                )
                
                BrandButton(
                    title: "Brand",
                    rightIcon: "chevron.down",
                    backgroundColor: Color.white
                )
                
                SimpleButton(
                    title: "Imported",
                    backgroundColor: Color.white
                )
                
                ButtonWImage(
                    title: "Kisan",
                    rightIcon: "ketchup",
                    backgroundColor: Color.white
                )
                
                ButtonWImage(
                    title: "Amul",
                    rightIcon: "amulic1",
                    backgroundColor: Color.white
                )
                
                ButtonWImage(
                    title: "Ashirwad",
                    rightIcon: "ashir1",
                    backgroundColor: Color.white
                )
                
                ButtonWImage(
                    title: "Maggi",
                    rightIcon: "magggi1",
                    backgroundColor: Color.white
                )
            }
            .padding(.horizontal)
        }
    }
}
