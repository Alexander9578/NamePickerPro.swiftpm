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

