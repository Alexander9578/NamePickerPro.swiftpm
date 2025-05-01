import SwiftUI

struct StartView: View {
    @Binding var names: [String]
    @Binding var name: String
    @Binding var bgColor: Color
    @Binding var textColor: Color
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            
            VStack{
                NavigationLink(destination: PlayView(
                    names: $names,
                    name: $name,
                    bgColor: $bgColor
                )){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.blue)
                            .frame(width: 240, height: 50);
                        Text("Text Name Picker")
                            .bold()
                            .font(.title)
                            .padding()
                            .foregroundStyle(textColor)
                    }
                }
                .padding()
                NavigationLink(destination: WheelView(
                    names: $names,
                    name: $name,
                    bgColor: $bgColor
                )){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.blue)
                            .frame(width: 280, height: 50);
                        Text("Wheel Name Picker")
                            .bold()
                            .font(.title)
                            .padding()
                            .foregroundStyle(textColor)
                    }
                }
            }
        }
    }
}
