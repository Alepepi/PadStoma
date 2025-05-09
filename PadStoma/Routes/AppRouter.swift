import SwiftUI

enum Route: Hashable {
    case play
    case tools
    case colostomy
}

class NavigationRouter: ObservableObject {
    @Published var path: [Route] = []
    
    func destination(for route: Route) -> AnyView {
        switch route {
        case .play:
            return AnyView(PlayView())
        case .tools:
            return AnyView(ToolsView())
        case .colostomy:
            return AnyView(ColostomyView())
        }
    }
}
