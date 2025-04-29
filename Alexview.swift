import SwiftUI
struct AlexView: View {
    @Binding var bgColor: Color
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            Text("")
        }
    }
}
