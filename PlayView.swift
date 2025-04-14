import SwiftUI

struct PlayView: View {
    @State var names: [String] = []
    @State var name: String = ""
    var body: some View {
        ForEach(names, id: \.self) { name in
                        Text(name)
                    }
        TextField("Name", text: $name)
            .onSubmit {
                names.append(name)
                name = ""
            }
    }
}

#Preview {
    PlayView()
}
