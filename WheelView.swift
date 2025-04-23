import SwiftUI

struct WheelView: View {
    @Binding var bgColor: Color
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
        }
    }
}
