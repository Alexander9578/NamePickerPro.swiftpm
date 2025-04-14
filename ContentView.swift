import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
        
            Color .cyan
            HStack {
                
                Text("NAME PICKER")
                    .font(.largeTitle)
                    .bold()
                    .background(.purple)
                Text("PRO")
                    .background(.red)
                    .font(.largeTitle)
                    .bold()
            }
        }
    }
}
