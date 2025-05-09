import SwiftUI

struct ContentView: View {
    @State var names: [String] = []
    @State var name: String = ""
    @State var bgColor: Color = Color.cyan
    @State var textColor: Color = Color.white
    @State var Rotate = 0.0
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
                    NavigationLink(destination: StartView(
                        names: $names,
                        name: $name,
                        bgColor: $bgColor,
                        textColor: $textColor
                    )){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .rotationEffect(.degrees(Rotate))
                                .animation(.easeInOut(duration: 3).delay(0),value: Rotate)
                                .foregroundStyle(.blue)
                                .frame(width: 100, height: 50);
                               
                            
                            Text("Start")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(textColor)
                                .rotationEffect(.degrees(Rotate))
                                 .animation(.easeInOut(duration: 3).delay(0),value: Rotate)
                                .onTapGesture {
                                    Rotate += 362
                                }
                        }
                    }
                    
                    NavigationLink(destination: EliminatorView(
                     
                        bgColor: $bgColor,
                       
                    )){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.red)
                                .frame(width: 150, height: 50);
                            Text("Eliminator")
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
                                    .frame(width: 70, height:70)
                                    .offset(x: -75, y: 25)
                                
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
