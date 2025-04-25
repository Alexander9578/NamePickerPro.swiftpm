import SwiftUI

struct SettingsView: View {
    @Binding var bgColor: Color
    
    @Binding var textColor: Color
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 35)
                        .frame(width: 330,height: 89)
                        .foregroundStyle(.white)
                    Text("App Settings")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.white)
                        .offset(y:-150)
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.gray)
                        .frame(width: 300, height: 50)
                        .offset(y:-10)
                    
                    Text("Background color")
                        .bold()
                        .foregroundStyle(.white)
                      
                        .offset(y:-10)
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.gray)
                        .frame(width: 125, height: 50)
                        .offset(x: -85)
                    ColorPicker("Choose Color", selection: $bgColor)
                        .bold()
                        .foregroundStyle(.black)
                }
                .offset(y:-150)
                .frame(width:275)
                ColorPicker("Choose Color", selection: $textColor)
            }
        }
    }
}
