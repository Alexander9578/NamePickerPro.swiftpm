import SwiftUI

struct SettingsView: View {

    @EnvironmentObject var theme: ThemeManager

    var body: some View {
        ZStack{
            if #available(iOS 17.0, *) {
                Color(theme.themeColor)
                    .ignoresSafeArea()
            } else {
                // Fallback on earlier versions
            }
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.red)
                        .frame(width: 220, height: 50)
                        .offset(y:-150)
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
                    ColorPicker("Choose Color", selection: $theme.themeColor)
                        .bold()
                        .foregroundStyle(.white)
                        .font(.title)
                        .offset(x:10)
                }
                    
            }
        }
    }
}
