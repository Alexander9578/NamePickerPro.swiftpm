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
                }
            }
        }
    }
}
