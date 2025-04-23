

import SwiftUI

struct CreditView: View {
    @Binding var bgColor: Color
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()

            
            VStack{
                Text("Credits:")
                    .font(.system(size: 25))
                    .padding()
                Text("Alexander Diaz")
                Text("Oskar Piątek")
                Text("Ryusei Yamada")
                Text("Luca Fabian")
            }
            .foregroundStyle(.white)

            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.blue)
                        .frame(width: 360, height: 50)
                        .offset(y:-10)
                    
                    Text("Developers")
                        .bold()
                        .foregroundStyle(.white)
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
                        .foregroundStyle(.white)
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
                        .foregroundStyle(.white)
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
                        .foregroundStyle(.white)
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
                        .foregroundStyle(.white)
                        .font(.title)
                        .offset(y:-10)
                
                }
            }
        }
    }
}




