import SwiftUI

struct StartView: View {
    @Binding var names: [String]
    @Binding var name: String
    @Binding var bgColor: Color
    @Binding var textColor: Color
    @State var tbColor: Color = Color.blue
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
                            .foregroundStyle(tbColor)
                            .frame(width: 400, height: 150);
                        
                        
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
                            .foregroundStyle(tbColor)
                            .frame(width: 400, height: 150);
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
