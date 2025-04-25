import SwiftUI

struct WheelView: View {
    @Binding var names: [String]
    @Binding var name: String
    @State var chosenNum: Int = 0
    @State var showName: Bool = false
    @Binding var bgColor: Color
    @State var Rotate = 0.0
    @State var viewNames: Bool = false
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            ZStack{
                if viewNames == false{
                    VStack{
                        //                    Circle()
                        //                        .foregroundStyle(.red)
                        //                        .frame(width: 300,height: 300)
                        //                        .opacity(showName ? 0 : 1)
                        Image(systemName: "arrow.trianglehead.clockwise")
                            .frame(width: 600,height: 150)
                            .scaleEffect(8)
                            .rotationEffect(.degrees(Rotate))
                            .animation(.easeInOut(duration: 3).delay(0),value: Rotate)
                            .opacity(showName ? 0 : 1)
                        
                        if showName {
                            Text("Chosen Name: \(names[chosenNum])")
                                .foregroundStyle(.blue)
                                .font(.largeTitle)
                                .bold()
                                .foregroundStyle(.white)
                        }
                        
                        Button("Spin to Choose a Name"){
                            if names.isEmpty {
                                showName = false
                            } else {
                                showName = false
                                Rotate += Double.random(in: 360...900)
                                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                                    chosenNum = Int.random(in: 0..<names.count)
                                    showName = true
                                }
                            }
                            
                        }
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.black)
                        .padding()
                        .offset(y: 50)
                    }
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
            }
            .offset(y: -100)
            
            VStack{
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
                    if names.isEmpty {} else{
                        viewNames.toggle()
                    }
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 200, height: 40)
                            .foregroundStyle(.blue)
                        Text("View Names")
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
            }
            .offset(y: 200)
        }
    }
}
