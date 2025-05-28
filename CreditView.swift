

import SwiftUI

struct CreditView: View {
    @Binding var bgColor: Color
    @State var textColor: Color = Color.white
    @State var tbColor: Color = Color.blue
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(tbColor)
                    .frame(width: 280, height: 350)
                VStack{

                        Text("Developers")
                            .bold()
                            .foregroundStyle(textColor)
                            .font(.largeTitle)
                            .offset(y:-10)
                        Text("Alex Diaz")
                            .bold()
                            .font(.title)
                            .foregroundStyle(textColor)
                    Text("Created Settings Page")
                        .foregroundStyle(textColor)
                        Text("Luca Fabian")
                            .bold()
                            .font(.title)
                            .foregroundStyle(textColor)
                    Text("Created the User Interface")
                        .foregroundStyle(textColor)
                        Text("Oskar Piątek")
                            .bold()
                            .font(.title)
                            .foregroundStyle(textColor)
                    Text("Created the Functions ")
                        .foregroundStyle(textColor)
                        Text("Ryusei Yamada")
                            .bold()
                            .font(.title)
                            .foregroundStyle(textColor)
                    Text("Created all of the UI")
                        .foregroundStyle(textColor)
                    
                }
            }
        }
    }
}
