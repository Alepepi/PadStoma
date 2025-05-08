import SwiftUI

enum Route: Hashable {
    case play
    case tools
    case colostony
}

class NavigationRouter: ObservableObject {
    @Published var path: [Route] = []
}
