import SwiftUI

struct ToolsView: View {
    let items: [InfoItem] = [
        InfoItem(title: "Stoma Care", description: "Detailed info about stoma care."),
        InfoItem(title: "Nutrition", description: "Tips on what to eat and avoid."),
        InfoItem(title: "Supplies", description: "List of needed supplies."),
        InfoItem(title: "Emergency", description: "What to do in an emergency."),
        InfoItem(title: "Stoma Care", description: "Detailed info about stoma care."),
        InfoItem(title: "Nutrition", description: "Tips on what to eat and avoid."),
        InfoItem(title: "Supplies", description: "List of needed supplies."),
        InfoItem(title: "Emergency", description: "What to do in an emergency."),
    ]

    @State private var selectedItem: InfoItem?

    var body: some View {
        ScrollView {
            ItemGridView(items: items, selectedItem: $selectedItem)
        }
        .navigationTitle("Health Info")
        .sheet(item: $selectedItem) { item in
            VStack(spacing: 20) {
                Text(item.title)
                    .font(.largeTitle)
                    .bold()
                Text(item.description)
                    .font(.body)
                    .padding()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ToolsView()
}
