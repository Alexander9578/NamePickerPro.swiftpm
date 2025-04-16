import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.cyan
                    .ignoresSafeArea()
                
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
                        Text("Start")
                            .font(.title)
                            .padding()
                            .foregroundStyle(.white)
                    }
//                    .navigationTitle("Start")
                }
            }
        }
    }
}
