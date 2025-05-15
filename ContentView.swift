import SwiftUI

struct ContentView: View {
    @State var names: [String] = []
    @State var name: String = ""
    @State var bgColor: Color = Color.cyan
    @State var textColor: Color = Color.white
    @State var Rotate = 0.0
    @State var tbColor: Color = Color.blue
    @State var EL : Color = Color.red
    @State var Secret : Color = (Color(red: 1.0, green: 0.84,blue: 0.0))
    @State var ONOFF = false
    var body: some View {
        NavigationStack{
            ZStack{
                bgColor
                    .ignoresSafeArea()
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(tbColor)
                            .frame(width: 375, height: 50);
                        
                        Text("NAME PICKER PRO ")
                            .font(.largeTitle)
                            .bold()
                            .foregroundStyle(textColor)
                    }
                    
                    .onAppear {
                        withAnimation(Animation.linear(duration: 6).repeatForever(autoreverses: false)) {
                            Rotate = 360
                        }
                    }
                    NavigationLink(destination: StartView(
                        names: $names,
                        name: $name,
                        bgColor: $bgColor,
                        textColor: $textColor,
                        tbColor: tbColor
                    )){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(tbColor)
                                .frame(width: 100, height: 50);
                            
                            
                            Text("Start")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(textColor)
                        }
                    }
                    
                 
                    NavigationLink(destination: SettingsView(
                        bgColor: $bgColor, textColor: $textColor, tbColor: $tbColor
                    ) ){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(tbColor)
                                .frame(width: 120, height: 50);
                            Text("Settings")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(textColor)
                        }
                        
                    }
                    NavigationLink(destination: CreditView(
                        bgColor: $bgColor, textColor: textColor, tbColor: tbColor
                    )){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(tbColor)
                                .frame(width: 120, height: 50);
                            Text("Credits")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(textColor)
                        }
                    }
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(Secret)
                            .frame(width: 130, height: 50);
                        Button("Premium"){
                            ONOFF.toggle()
                            
                            if ONOFF {
                                tbColor = (Color(red: 0.8, green: 0.66,blue: 0.0))
                                Secret = (Color(red: 0.8, green: 0.66,blue: 0.0))
                                bgColor = (Color(red: 1.0, green: 0.84,blue: 0.0))
                                textColor = (Color(red: 1.0, green: 0.84,blue: 0.0))
                                EL = (Color(red: 0.8, green: 0.66,blue: 0.0))
                            } else {
                                tbColor = Color.blue
                                Secret = (Color(red: 1.0, green: 0.84,blue: 0.0))
                                bgColor = Color.cyan
                                textColor = Color.white
                                EL = Color.red
                                
                            }
                           
                            
                            
                            
                            
                            
                            
                            
                            
                        }
                        
                        .bold()
                        .font(.title)
                        .padding()
                        .foregroundStyle(textColor)
                        
                       
                        
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
//import AVFoundation
//var audioplayer: AVAudioPlayer?
//if let path = Bundle.main.path(forResource: "Lobby.band", ofType: "mp3")
//    let url
