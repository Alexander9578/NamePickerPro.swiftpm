import SwiftUI

struct ContentView: View {
    @State var bgColor: Color = Color.cyan
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
                                .foregroundStyle(.white)
                        }
                    }
                    NavigationLink(destination: PlayView(
                        bgColor: $bgColor
                    )){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                                .frame(width: 100, height: 50);
                            Text("Start")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(.white)
                        }
                    }
                    //                    .navigationTitle("Start")
                    NavigationLink(destination: SettingsView(
                        bgColor: $bgColor
                    )){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                                .frame(width: 120, height: 50);
                            Text("Settings")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(.white)
                        }
                        
                    }
                    NavigationLink(destination: CreditView(
                        bgColor: $bgColor
                    )){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                                .frame(width: 120, height: 50);
                            Text("Credits")
                                .bold()
                                .font(.title)
                                .padding()
                                .foregroundStyle(.white)
                        }
                        
                    }
                    //
                    
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
                    .offset(y: 180)
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
