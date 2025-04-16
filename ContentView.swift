import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                
                
                Color .cyan
                
                VStack{
                    HStack {
                        
                        Text("NAME PICKER")
                            .font(.largeTitle)
                            .bold()
                            .foregroundStyle(.white)
                        Text("PRO")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                            .bold()
                        
                        
                    }
                    
                    
                    
                    
                    NavigationLink(destination: PlayView()){
                        Text("Play")
                            .font(.title)
                            .padding()
                            .foregroundStyle(.white)
                    }
                    //                    .navigationTitle("Start")
                    
                    Rectangle()
                        .offset(y: 240)
                        .frame(width: 390,height: 150)
                        .foregroundStyle(.gray)
                    Text("ONE Time Offer !!")
                        .bold()
                        .foregroundStyle(.black)
                        .offset(x:30,y:90)
                        .font(.title2)
                    Text("Claim your Nitendo Switch 3  for only        1 cents !! ")
                        .bold()
                        .foregroundStyle(.red)
                        .offset(x:10,y:120)
                        .font(.title2)
                    Link("CLAIM", destination: URL(string: "https://www.temu.com")!)
                            .bold()
                            .foregroundStyle(.yellow)
                            .offset(x:10,y:95)
                            .font(.largeTitle)
                    Image("File 3")
                }
                
            }
        }
    }
}
