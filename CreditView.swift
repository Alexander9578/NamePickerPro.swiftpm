

import SwiftUI

struct CreditView: View {
    @Binding var bgColor: Color
    @State var textColor: Color = Color.white
    @State var tbColor: Color = Color.blue
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(tbColor)
                        .frame(width: 360, height: 50)
                        .offset(y:-10)
                    
                    Text("Developers")
                        .bold()
                        .foregroundStyle(textColor)
                        .font(.largeTitle)
                        .offset(y:-10)
                }
                Button{
                    
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(tbColor)
                            .frame(width: 200, height: 50);
                        Text("Alex Diaz")
                            .bold()
                            .font(.title)
                            .padding()
                            .foregroundStyle(textColor)
                    }
                    
                }
                Button{
                    
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(tbColor)
                            .frame(width: 200, height: 50);
                        Text("Luca Fabian")
                            .bold()
                            .font(.title)
                            .padding()
                            .foregroundStyle(textColor)
                    }
                    
                }
                
                
                Button{
                    
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(tbColor)
                            .frame(width: 200, height: 50);
                        Text("Oskar Piątek")
                            .bold()
                            .font(.title)
                            .padding()
                            .foregroundStyle(textColor)
                    }
                    
                }
                Button{
                    
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(tbColor)
                            .frame(width: 200, height: 50);
                        Text("Ryusei Yamada")
                            .bold()
                            .font(.title)
                            .padding()
                            .foregroundStyle(textColor)
                    }
                    
                }
            }
            
        }
    }
}


