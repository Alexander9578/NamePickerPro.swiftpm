import SwiftUI

struct SettingsView: View {
    @Binding var bgColor: Color
    var body: some View {
        ZStack{
            bgColor
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
