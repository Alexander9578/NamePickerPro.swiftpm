import SwiftUI

struct PlayView: View {
    @State var names: [String] = []
    @State var name: String = ""
    @State var chosenNum: Int = 0
    @State var showName: Bool = false
    @EnvironmentObject var theme: ThemeManager
    var body: some View {
        ZStack{
            Color.cyan
            if #available(iOS 17.0, *) {
                Color(theme.themeColor)
                    .ignoresSafeArea()
            } else {
                // Fallback on earlier versions
            }
            
            VStack{
                
                
                Text("")
                Text("Names:")
                    .foregroundStyle(.black)
                    .bold()
                    .font(.largeTitle)
                if names.isEmpty{
                    Text("Start entering names!")
                        .font(.system(size: 20))
                        .padding()
                } else {
                    List{
                        ForEach(names.indices, id: \.self) { name in
                            //            Text("\(name + 1). \(names[name])")
                            Text(names[name])
                                .foregroundStyle(.black)
                                .bold()
                                .font(.system(size: 20))
                        }
                        .onDelete {IndexSet in names.remove(atOffsets: IndexSet)}
                    }
                    .frame(height: 200)
                    .scrollContentBackground(.hidden)
                    .background(Color.clear)
                }
                
                TextField("Enter Name", text: $name)
                    .onSubmit {
                        if name.isEmpty {
                        } else {
                            names.append(name)
                            name = ""
                        }
                    }
                
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                    .frame(width: 200)
                    .padding()
                Button{
                    if names.isEmpty {
                        showName = false
                        
                    } else {
                        showName = true
                        chosenNum = Int.random(in: 0..<names.count)
                    }
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 200, height: 40)
                            .foregroundStyle(.blue)
                        Text("Choose Random Name")
                            .foregroundStyle(.white)
                    }
                }
                
                Button {
                                  names.removeAll()
                                  name = ""
                                  showName = false
                              } label: {
                                  ZStack{
                                      RoundedRectangle(cornerRadius: 5)
                                          .frame(width: 200, height: 40)
                                          .foregroundColor(.red)
                                      Text("Reset")
                                          .foregroundStyle(.white)
                                          .bold()
                                  }
                              }
                           
              
                if showName == true {
                    Text("Chosen Name: \(names[chosenNum])")
                        .foregroundStyle(.blue)
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.white)
                    
                }
            }
        }
    }
}

#Preview {
    PlayView()
}
