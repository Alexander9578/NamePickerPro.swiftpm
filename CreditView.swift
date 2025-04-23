

import SwiftUI

struct CreditView: View {
    @Binding var bgColor: Color
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            
            
            Text("You write credit here")
        }
    }
}




