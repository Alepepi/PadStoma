import SwiftUI

struct ToolsView: View {
    let items: [InfoItem] = [
        InfoItem(
            title: "Medical Waste Bag",
            description: "Used to safely dispose of used stoma bags, wipes, and other contaminated materials."
        ),
        InfoItem(
            title: "Wipes/Absorbent Cloths",
            description: "Alcohol-free, used to clean and dry the skin around the stoma before applying a new bag."
        ),
        InfoItem(
            title: "Curved Scissors",
            description: "Used to cut the skin barrier to fit the stoma if using a cut-to-size system."
        ),
        InfoItem(
            title: "One-Piece Drainable Stoma Bag",
            description: "A combined pouch and skin barrier system that collects stool or urine. It can be emptied without removal."
        ),
        InfoItem(
            title: "Modeling Paste/Barrier Ring",
            description: "Applied around the stoma to fill skin creases, prevent leaks, and protect skin."
        ),
        InfoItem(
            title: "Adhesive Spray/Remover",
            description: "Adhesive spray helps the barrier stick better. Remover spray gently lifts adhesives without irritating the skin."
        ),
        InfoItem(
            title: "?",
            description: "?"
        ),
        InfoItem(
            title: "?",
            description: "?"
        ),
    ]

    @State private var selectedItem: InfoItem?

    var body: some View {
        ScrollView {
            ItemGridView(
                items: items,
                selectedItem: $selectedItem
            )
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
