import SwiftUI

struct SettingsView: View {
    @State private var bgColor =
            Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)

    var body: some View {
        ZStack{
            Color.cyan
                .ignoresSafeArea()
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
