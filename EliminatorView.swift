import SwiftUI

struct EliminatorView: View {
    @Binding var names: [String]
    @Binding var name: String
    @State var chosenNum: Int = 0
    @State var showName: Bool = false
    @State var chosenName: String = ""
    @Binding var bgColor: Color
    @State var textColor: Color = Color.white
    var body: some View {
        ZStack{
            Color.red
                .ignoresSafeArea()
            VStack{
                Text("Eliminator")
                    .foregroundStyle(textColor)
                    .bold()
                    .font(.system(size: 40))
                    .padding()
                    
              
                if names.isEmpty{
                    Text("Last one standing wins!")
                        .font(.system(size: 20))
                        .padding()
                        .foregroundStyle(textColor)
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
                        chosenName = names[chosenNum]
                        names.remove(at: chosenNum)
                    }
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 200, height: 40)
                            .foregroundStyle(.black)
                        Text("Choose Random Name")
                            .foregroundStyle(.white)
                    }
                }
                
                Button {
                    names.removeAll()
                    name = ""
                    showName = false
                } label: {
                        Text("Reset")
                            .foregroundStyle(.white)
                            .bold()
                            .frame(width: 200, height: 40)
                            .border(.black)
                }
                
                
                if showName == true {
                    Text("Chosen Name: \(chosenName)")
                        .foregroundStyle(.blue)
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

