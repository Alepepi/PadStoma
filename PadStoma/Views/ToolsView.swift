import SwiftUI

struct ToolsView: View {
    let items: [InfoItem] = [
        InfoItem(title: "Medical Waste Bag", description: "A disposable bag designed to safely dispose of potentially contaminated materials (such as used stoma bags, wipes, gauze, and gloves). \nUse: Used to hygienically and safely discard all used products and biological waste (like old stoma bags or stool/urine) to avoid infection and odors."),
        InfoItem(title: "Wipes or Absorbent Cloths", description: "Alcohol-free wipes or soft cloths designed for cleaning the skin around the stoma. \nUse: Used to gently clean the peristomal area, removing residue, sweat, or leftover adhesive before applying a new stoma bag. Can also be used to dry the skin."),
        InfoItem(title: "Stoma Bag One Piece Drainable", description: "A one-piece system where the stoma bag and skin barrier are combined. It is drainable, allowing it to be emptied without being completely removed. \nUse: Applied directly around the stoma to collect stool or urine. It can be emptied when partially full without needing to change the entire system."),
        InfoItem(title: "Curved Scissors", description: "Scissors with a curved tip designed to safely and precisely cut stoma barriers or wafers. \nUse: Used to cut the skin barrier opening to fit the stoma if using a cut-to-size system."),
        InfoItem(title: "Modeling Paste or Barrier Ring", description: "\tModeling Paste: A putty-like substance applied around the stoma to fill gaps or skin folds. \nBarrier Ring: A circular ring placed between the stoma and the skin barrier for better sealing. \nUse: Both are used to prevent leaks, protect the skin, and improve the fit and adhesion of the stoma system."),
        InfoItem(title: "Adhesive Spray and Remover Spray", description: "\tAdhesive Spray: Enhances the bond between the skin and the stoma barrier. \n\tAdhesive Remover Spray: Gently dissolves adhesive residue without damaging the skin. \nUse: \n\tAdhesive spray is applied before attaching the barrier to improve sticking. \n\tRemover spray is used during bag changes to remove the barrier gently and painlessly.")
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
