import SwiftUI

struct SettingsView: View {
    @Binding var bgColor: Color
    
    @Binding var textColor: Color
    @Binding var tbColor: Color
    @State var isPressed = true
    var body: some View {
       
        
        ZStack{
            bgColor
                .ignoresSafeArea()
            VStack (spacing: 30) {
                Image(systemName: "gear")
                    .font(.largeTitle)
              
                    Text("App Settings")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(textColor)
                   
                        .padding(-1)
            
                Text("Mix and match different colors to your liking!")
                    .bold()
                    .foregroundStyle(textColor)
                  
                    
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(tbColor)
                        .frame(width: 150 ,height: 50)
                       
                    
                    Text("Background")
                        
                        .foregroundStyle(textColor)
                        .font(.title)
                       
                      
                     
                }
                
                
               
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.tertiary)
                    
                        .frame(width: 150 ,height: 50)
                    
                    ColorPicker("  Choose Color", selection: $bgColor)
                      
                        .foregroundStyle(textColor)
                        .frame(width: 150, height: 50)
                }
            
                .frame(width:275)
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(tbColor)
                        .frame(width: 150 ,height: 50)
                      
                    
                    Text("Text Color")
                       
                        .foregroundStyle(textColor)
                        .font(.title)
                      
                    
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(tbColor)
                        .frame(width: 150 ,height: 50)
                    ZStack{
                        RoundedRectangle(cornerRadius:10)
                            .foregroundStyle(.tertiary)
                            .frame(width: 150, height: 50)
                          
                        ColorPicker("  Choose Color", selection: $textColor)
                            .frame(width: 150 , height: 50)
                            
                            .foregroundStyle(textColor)
                    }
                }
                .padding()
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(tbColor)
                        .frame(width: 150 ,height: 50)
                    
                    
                    Text("Text Box")
                        
                        .foregroundStyle(textColor)
                        .font(.title)
                      
                       
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(tbColor)
                        .frame(width: 150 ,height: 50)
                    ZStack{
                        RoundedRectangle(cornerRadius:10)
                            .foregroundStyle(.tertiary)
                            .frame(width: 150 ,height: 50)
                            
                        ColorPicker("  Choose Color", selection: $tbColor)
                            .frame(width: 150 , height: 50)
                           
                            .foregroundStyle(textColor)
                    }
                }
                .padding()
                
                
                
                
                
                }
            }
        }
    }

