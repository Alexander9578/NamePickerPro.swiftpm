import SwiftUI
struct OskarView: View {
    @Binding var bgColor: Color
    
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            Text("")
        }
    }
}
