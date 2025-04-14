import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
        
            Color .cyan
            HStack {
                
                Text("NAME PICKER")
                    .font(.largeTitle)
                    .bold()
                    .background(.yellow)
                Text("PRO")
                    .background(.red)
                    .font(.largeTitle)
                    .bold()
            }
        }
    }
}
