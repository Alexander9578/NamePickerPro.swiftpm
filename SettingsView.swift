import SwiftUI

struct SettingsView: View {
    @Binding var bgColor: Color
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 35)
                        .frame(width: 330, height: 250)
                        .foregroundStyle(.white)
                    Text("App Settings")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.white)
                        .offset(y:-150)
                }
                    
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.red)
                        .frame(width: 360, height: 50)
                        .offset(y:-10)
                    
                    Text("Change Background Color")
                        .bold()
                        .foregroundStyle(.white)
                        .font(.title)
                        .offset(y:-10)
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.red)
                        .frame(width: 200, height: 50)
                        .offset(x:-100)
                    ColorPicker("Choose Color", selection: $bgColor)
                        .bold()
                        .foregroundStyle(.white)
                        .offset(y:-150)
                    
                    VStack{
                        
                        Text("Change background")
                            .offset(y: -50)
                            .foregroundStyle(.black)
                            .bold()
                            
                        
                        ColorPicker("Color", selection: $bgColor)
                                .bold()
                                .foregroundStyle(.white)
                                .font(.title)
                                .offset(y: -50)
                                .frame(width: 50 , height: 50)
                                
                        }
                    }
                }
            }
        }
    }

