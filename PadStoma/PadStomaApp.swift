import SwiftUI

@main
struct PadStomaApp: App {
    @StateObject private var router = NavigationRouter()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(router)
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(NavigationRouter())
}
