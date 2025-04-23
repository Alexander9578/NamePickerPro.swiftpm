import SwiftUI

struct WheelView: View {
    @Binding var bgColor: Color
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            Circle()
                .foregroundStyle(.red)
                .frame(width: 300,height: 300)
            Image(systemName: "arrow.up")
                .frame(width: 600,height: 150)
                .scaleEffect(6)
            
        }
    }
}
