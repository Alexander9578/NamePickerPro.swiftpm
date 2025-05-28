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
    @State var showAlert = false
    @State var ONOFF = false
    @State private var CurrentColorIndex = 0
          let colors: [Color] = [.red, .orange, .yellow, .green, .indigo, .purple]
    
    var body: some View {
        NavigationStack{
            ZStack{
                bgColor
                    .ignoresSafeArea()
                VStack{
                    Button {
                        showAlert = true
                    } label: {
                        Image(systemName: "questionmark.circle.fill")
                            .font(.largeTitle)
                    }
                    
                    .alert("App guide", isPresented: $showAlert) {
                        
                        Button("Got it!", role:  .cancel) {}
                    } message: {
                        Text("Welcome! Name picker pro is an app designed to simply and efficently deliver name selections. Click (start) to begin, and select one of the three modes based on your preference. You can also customize your app to your liking. Enjoy!")
                    }
                    .padding()
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(tbColor)
                            .frame(width: 375, height: 50);
                        
                        Text("NAME PICKER PRO ")
                            .foregroundColor(colors[CurrentColorIndex])
                            .font(.largeTitle)
                            .bold()
                            .onAppear {
                                Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { _ in
                                    DispatchQueue.main.async {  CurrentColorIndex = (CurrentColorIndex + 1) % colors.count
                                    }
                                    
                                }
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
                                    
                                        .padding(-0.99)
                                        .font(.title2)
                                    
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
