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
                        .frame(width: 125, height: 50)
                        .offset(x: -85)
                    ColorPicker("Choose Color", selection: $bgColor)
                        .bold()
                        .foregroundStyle(.black)
                }
                .offset(y:-150)
                .frame(width:275)
            }
        }
    }
}
