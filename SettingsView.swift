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
                Text("App Settings")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
              
                Text("Change Background Color")
                    .bold()
                    .foregroundStyle(.white)
                    .font(.title)
                
                ColorPicker("Choose Color", selection: $theme.themeColor)
                    .bold()
                    .foregroundStyle(.white)
                    .font(.title)
                    
            }
        }
    }
}
