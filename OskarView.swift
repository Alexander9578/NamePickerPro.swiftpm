import SwiftUI
struct OskarView: View {

    @Binding var bgColor: Color
    @State var textColor: Color = Color.white
    
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            Text("")
        }
    }
}
