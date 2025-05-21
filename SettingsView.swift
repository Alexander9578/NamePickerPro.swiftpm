import SwiftUI

struct SettingsView: View {
    @Binding var bgColor: Color
    
    @Binding var textColor: Color
    @Binding var tbColor: Color
    @State var isPressed = true
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            VStack{
                
                
                
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(tbColor)
                        .frame(width: 300, height: 50)
                        .offset(y:-10)
                    
                    Text("Background Color")
                        .bold()
                        .foregroundStyle(textColor)
                        .font(.title)
                      
                        .offset(y:-10)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 200 ,height: 75)
                        .foregroundStyle(tbColor)
                    Text("App Settings")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(textColor)
                        .offset(y:-150)
                }
                
               
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.tertiary)
                        .frame(width: 125, height: 50)
                        .offset(x: -22, y: -2)
                    
                    ColorPicker("Choose Color", selection: $bgColor)
                        .bold()
                        .foregroundStyle(textColor)
                        .frame(width: 150, height: 75)
                }
                .offset(y:-90)
                .frame(width:275)
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(tbColor)
                        .frame(width: 300, height: 50)
                        .offset(y:-10)
                    
                    Text("Text Color")
                        .bold()
                        .foregroundStyle(textColor)
                        .font(.title)
                      
                        .offset(y:-10)
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(tbColor)
                        .frame(width: 200, height: 75)
                    ZStack{
                        RoundedRectangle(cornerRadius:10)
                            .foregroundStyle(.tertiary)
                            .frame(width: 120, height: 50)
                            .offset(x: -22)
                        ColorPicker("Choose Color", selection: $textColor)
                            .frame(width: 150 , height: 75)
                            .bold()
                            .foregroundStyle(textColor)
                    }
                }
                .padding()
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(tbColor)
                        .frame(width: 300, height: 50)
                        .offset(y:-10)
                    
                    Text("Text Box Color")
                        .bold()
                        .foregroundStyle(textColor)
                        .font(.title)
                      
                        .offset(y:-10)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(tbColor)
                        .frame(width: 200, height: 75)
                    ZStack{
                        RoundedRectangle(cornerRadius:10)
                            .foregroundStyle(.tertiary)
                            .frame(width: 120, height: 50)
                            .offset(x: -22)
                        ColorPicker("Choose Color", selection: $tbColor)
                            .frame(width: 150 , height: 75)
                            .bold()
                            .foregroundStyle(textColor)
                    }
                }
                .padding()
                
                
                
                
                
                }
            }
        }
    }

