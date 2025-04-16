import SwiftUI

struct SettingsView: View {
    @State private var bgColor =
            Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)

    var body: some View {
        
        VStack{
            Text("App Settings")
                .font(.largeTitle)
            Text("Customize Theme")
            
        }
    }
}
