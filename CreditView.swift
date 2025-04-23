

import SwiftUI

struct CreditView: View {
    @Binding var bgColor: Color
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            
            VStack{
                Text("Credits:")
                    .font(.system(size: 25))
                    .padding()
                Text("Alexander Diaz")
                Text("Oskar Piątek")
                Text("Ryusei Yamada")
                Text("Luca Fabian")
            }
            .foregroundStyle(.white)
        }
    }
}




