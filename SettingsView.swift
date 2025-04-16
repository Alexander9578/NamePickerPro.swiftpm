import SwiftUI

struct SettingsView: View {
    @State var bgColor = Color.cyan //Color(.sRGB, red: 0.90, green: 0.9, blue: 0.2)

    var body: some View {
        ZStack{
            if #available(iOS 17.0, *) {
                Color(bgColor)
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
                
                ColorPicker("Choose Color", selection: $bgColor)
                    .bold()
                    .foregroundStyle(.white)
                    .font(.title)
                    
            }
        }
    }
}
