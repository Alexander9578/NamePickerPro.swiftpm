import SwiftUI
struct AlexView: View {
    @Binding var bgColor: Color
    @State var textColor: Color = Color.white
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
          
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.blue)
                    .frame(width: 300, height: 50)
                
                
                Text("Alexander Diaz")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(textColor)
            }
        }
    }
}
