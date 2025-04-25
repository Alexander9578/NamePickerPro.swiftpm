

import SwiftUI

struct CreditView: View {
    @Binding var bgColor: Color
    @State var textColor: Color = Color.white
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.blue)
                        .frame(width: 360, height: 50)
                        .offset(y:-10)
                    
                    Text("Developers")
                        .bold()
                        .foregroundStyle(textColor)
                        .font(.largeTitle)
                        .offset(y:-10)
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.blue)
                        .frame(width: 300, height: 50)
                        .offset(y:-10)
                    Text("Ryusei Yamada")
                        .bold()
                        .foregroundStyle(textColor)
                        .font(.title)
                        .offset(y:-10)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.blue)
                        .frame(width: 300, height: 50)
                        .offset(y:-10)
                    Text("Oskar Piątek")
                        .bold()
                        .foregroundStyle(textColor)
                        .font(.title)
                        .offset(y:-10)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.blue)
                        .frame(width: 300, height: 50)
                        .offset(y:-10)
                    Text("Luca Fabian")
                        .bold()
                        .foregroundStyle(textColor)
                        .font(.title)
                        .offset(y:-10)
                
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.blue)
                        .frame(width: 300, height: 50)
                        .offset(y:-10)
                    Text("Alexander Diaz")
                        .bold()
                        .foregroundStyle(textColor)
                        .font(.title)
                        .offset(y:-10)
                
                }
            }
        }
    }
}




