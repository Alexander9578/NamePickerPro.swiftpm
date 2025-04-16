import SwiftUI

struct PlayView: View {
    @State var names: [String] = []
    @State var name: String = ""
    @State var chosenNum: Int = 0
    @State var showName: Bool = false
    var body: some View {
        ZStack{
            Color.cyan
                .ignoresSafeArea()
            
            VStack{
                
                
                Text("")
                Text("Names:")
                ForEach(names.indices, id: \.self) { name in
                    //            Text("\(name + 1). \(names[name])")
                    Text(names[name])
                }
                
                TextField("Name", text: $name)
                    .onSubmit {
                        if name.isEmpty {
                        } else {
                            names.append(name)
                            name = ""
                        }
                    }
                    .cornerRadius(10)
                Button("Choose Random Name") {
                    if names.isEmpty {
                        showName = false
                            
                    } else {
                        showName = true
                        chosenNum = Int.random(in: 0..<names.count)
                           
                    }
                }
                .foregroundStyle(.white)
                .background(
RoundedRectangle(cornerRadius: 5)
    .fill(Color.blue)
                
                )
                if showName == true {
                    Text("Chosen Name: \(names[chosenNum])")
                }
            }
        }
    }
}

#Preview {
    PlayView()
}
