import SwiftUI

class ThemeManager: ObservableObject {
    @Published var themeColor: Color = .blue
}

@main
struct MyApp: App {
    @StateObject private var themeManager = ThemeManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                        .environmentObject(themeManager)
            
        }
    }
}
