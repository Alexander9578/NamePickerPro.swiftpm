import SwiftUI
struct AlexView: View {
    @Binding var bgColor: Color
    @State var textColor: Color = Color.white
    @State var tbColor: Color = Color.blue
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(tbColor)
                    .frame(width: 300, height: 50, alignment: .top)
                   
                
                
                Text("Alexander Diaz")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(textColor)
             
                 
            }
            .frame(maxHeight: .infinity, alignment: .top)
        
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(tbColor)
                    .frame(width: 320, height: 435, alignment: .top)
                
                Image("AlexPicture2")
                    .resizable()
                    .frame(width: 290, height: 400, alignment: .bottomLeading)
                
            }
            
           
            
            
            
          
            
        }
    }
}
