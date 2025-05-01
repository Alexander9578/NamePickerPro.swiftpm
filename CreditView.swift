

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
                NavigationLink(destination: AlexView(
                        bgColor: $bgColor // , textColor: $textColor
                    ) ){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                                .frame(width: 120, height: 50);
                            Text("Alex")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(textColor)
                        }
                        
                    }
                NavigationLink(destination: LucaView(
                        bgColor: $bgColor // , textColor: $textColor
                    ) ){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                                .frame(width: 120, height: 50);
                            Text("Luca")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(textColor)
                        }
                        
                    }
                    
                    
                NavigationLink(destination: OskarView(
                        bgColor: $bgColor // , textColor: $textColor
                    ) ){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                                .frame(width: 120, height: 50);
                            Text("Oskar")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(textColor)
                        }
                        
                    }
                NavigationLink(destination: RyuseiView(
                    bgColor: $bgColor // , textColor: $textColor
                ) ){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.blue)
                            .frame(width: 120, height: 50);
                        Text("Ryusei")
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
    

