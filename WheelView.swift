import SwiftUI

struct WheelView: View {
    @Binding var bgColor: Color
    @State var Rotate = 0.0
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
                .rotationEffect(.degrees(Rotate))
                .animation(.easeInOut(duration: 3).delay(0),value: Rotate)
            VStack{
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 250, height: 50)
                        .offset(x: 0, y: 200)
                        .foregroundStyle(.gray)
                    Button("SPIN"){
                        Rotate += Double.random(in: 360...900)
                    }
                    .font(.largeTitle)
                    .bold()
                    .offset(y:200)
                    .foregroundStyle(.black)
                }
            }
        }
    }
}
