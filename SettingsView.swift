import SwiftUI

struct SettingsView: View {
<<<<<<< Updated upstream
    @State var bgColor =
    Color(.sRGB, red: 135/255, green: 206/255, blue: 235/255 )
=======
    @State private var bgColor =
    Color(.sRGB, red: 0.0, green: 0.7, blue: 1.5)

>>>>>>> Stashed changes
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
