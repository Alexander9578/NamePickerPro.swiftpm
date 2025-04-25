import SwiftUI

struct ContentView: View {
    @State var names: [String] = []
    @State var name: String = ""
    @State var bgColor: Color = Color.cyan
    @State var textColor: Color = Color.white
    var body: some View {
        NavigationStack{
            ZStack{
                bgColor
                    .ignoresSafeArea()
                VStack{
                    HStack {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                                .frame(width: 375, height: 50);
                            
                            Text("NAME PICKER PRO ")
                                .font(.largeTitle)
                                .bold()
                                .foregroundStyle(textColor)
                        }
                    }
                    NavigationLink(destination: PlayView(
                        names: $names,
                        name: $name,
                        bgColor: $bgColor, textColor: textColor
                    )){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                                .frame(width: 100, height: 50);
                            Text("Start")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(textColor)
                        }
                    }
                    NavigationLink(destination: WheelView(
                        bgColor: $bgColor
                    )){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                                .frame(width: 120, height: 50);
                            Text("Wheel")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(textColor)
                        }
                    }
                   NavigationLink(destination: SettingsView(
                    bgColor: $bgColor, textColor: $textColor
                    ) ){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                                .frame(width: 120, height: 50);
                            Text("Settings")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(textColor)
                        }
                        
                    }
                    NavigationLink(destination: CreditView(
                        bgColor: $bgColor, textColor: textColor
                    )){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                                .frame(width: 120, height: 50);
                            Text("Credits")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(textColor)
                        }
                        
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 390,height: 150)
                            .foregroundStyle(.white)
                        VStack{
                            HStack{
                                Image("temu")
                                    .resizable()
                                    .frame(width: 60, height:60)
                                    .offset(x: -80, y: 8)
                                
                                Text("ONE TIME OFFER ")
                                    .bold()
                                    .foregroundStyle(.orange)
                                    .font(.title2)
                                    .offset(x: -35)
                                    .font(.largeTitle)
                                
                                    .padding(-1)
                                
                            }
                            Text("Claim free items today!")
                            
                            Text("Invite friends to the app")
                            
                                .bold()
                                .foregroundStyle(.black)
                                .font(.title2)
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 200, height: 50)
                                    .foregroundStyle(.gray)
                                Link("CLAIM", destination: URL(string: "https://www.temu.com")!)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .font(.largeTitle)
                                
                            }
                        }
                        .offset(x: 12)
                    }
                    .offset(y: 100)
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
