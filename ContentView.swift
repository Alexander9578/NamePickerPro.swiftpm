import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.cyan
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
                    //                    .navigationTitle("Start")
                    ZStack{
                        Rectangle()
                            .frame(width: 390,height: 150)
                            .foregroundStyle(.gray)
                        VStack{
                            Text("ONE Time Offer !!")
                                .bold()
                                .foregroundStyle(.black)
                                .font(.title2)
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
