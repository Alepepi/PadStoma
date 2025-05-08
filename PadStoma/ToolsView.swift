import SwiftUI

struct InfoItem: Identifiable {
    let id = UUID()
    let title: String
    let description: String
}

struct ToolsView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let items: [InfoItem] = [
        InfoItem(title: "Stoma Care", description: "Detailed info about stoma care."),
        InfoItem(title: "Nutrition", description: "Tips on what to eat and avoid."),
        InfoItem(title: "Supplies", description: "List of needed supplies."),
        InfoItem(title: "Emergency", description: "What to do in an emergency."),
        InfoItem(title: "Stoma Care", description: "Detailed info about stoma care."),
        InfoItem(title: "Nutrition", description: "Tips on what to eat and avoid."),
        InfoItem(title: "Supplies", description: "List of needed supplies."),
        InfoItem(title: "Emergency", description: "What to do in an emergency.")
    ]
    
    @State private var selectedItem: InfoItem? = nil
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(items) { item in
                    Button(action: {
                        selectedItem = item
                    }) {
                        VStack {
                            Text(item.title)
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 150)
                                .background(Color.blue)
                                .cornerRadius(12)
                                .shadow(radius: 5)
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .padding()
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
