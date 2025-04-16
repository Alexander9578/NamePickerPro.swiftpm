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
                    .foregroundStyle(.black)
                    .bold()
                    .font(.largeTitle)
                ForEach(names.indices, id: \.self) { name in
                    //            Text("\(name + 1). \(names[name])")
                    Text(names[name])
                        .foregroundStyle(.white)
                        .bold()
                        .font(.title2)
                     
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
    .fill(Color.gray)
                
                )
                
                .padding()
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
