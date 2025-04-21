import SwiftUI

struct ContentView: View {
    @State var bgColor =
    Color(.sRGB, red: 135/255, green: 206/255, blue: 235/255 )
        
    var body: some View {
        NavigationStack{
            ZStack{
                if #available(iOS 17.0, *) {
                    Color(bgColor)
                        .ignoresSafeArea()
                } else {
                    // Fallback on earlier versions
                }
                
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
                    NavigationLink(destination: PlayView()){
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
                    NavigationLink(destination: SettingsView()){
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
                    
                    ColorPicker("Choose Color", selection: $bgColor)
                        .bold()
                        .foregroundStyle(.white)
                        .font(.title)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 390,height: 150)
                            .foregroundStyle(.gray)
                        VStack{
                            HStack{
                                Image("temu")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .offset(x: -80, y: 8)
                                Text("ONE Time Offer !!")
                                    .bold()
                                    .foregroundStyle(.black)
                                    .font(.title2)
                                    .offset(x: -30)
                            }
                            Text("Claim your Nitendo Switch 3  for only        1 cents !! ")
                                .bold()
                                .foregroundStyle(.red)
                                .font(.title2)
                            Link("CLAIM", destination: URL(string: "https://www.temu.com")!)
                                .bold()
                                .foregroundStyle(.yellow)
                                .font(.largeTitle)
                            
                        }
                        .offset(x: 12)
                    }
                    .offset(y: 180)
                }
            }
        }
    }
}
