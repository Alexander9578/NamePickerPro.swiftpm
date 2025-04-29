

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
                    NavigationLink(destination: SettingsView(
                        bgColor: $bgColor, textColor: $textColor
                    ) ){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                                .frame(width: 120, height: 50);
                            Text("Settings")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(textColor)
                        }
                        
                    }
                    NavigationLink(destination: SettingsView(
                        bgColor: $bgColor, textColor: $textColor
                    ) ){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                                .frame(width: 120, height: 50);
                            Text("Settings")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(textColor)
                        }
                        
                    }
                    
                    
                    NavigationLink(destination: SettingsView(
                        bgColor: $bgColor, textColor: $textColor
                    ) ){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                                .frame(width: 120, height: 50);
                            Text("Settings")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(textColor)
                        }
                        
                    }
                NavigationLink(destination: SettingsView(
                    bgColor: $bgColor, textColor: $textColor
                ) ){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.blue)
                            .frame(width: 120, height: 50);
                        Text("Settings")
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
    

