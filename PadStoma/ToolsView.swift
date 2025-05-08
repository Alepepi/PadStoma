//
//  ToolsView.swift
//  PadStoma
//
//  Created by Alejandro Ollivier Ochoa on 5/8/25.
//

import SwiftUI

struct InfoItem: Identifiable {
    let id = UUID()
    let title: String
    let description: String
}

struct ToolsView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
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
        NavigationStack {
            ScrollView{
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(items) { item in
                        Button(action: {
                            selectedItem = item
                        }) {
                            VStack {
                                Text(item.title)
                                    .font(.headline)
                                    .foregroundColor(.black)
                                    .padding()
                                    .frame(width: 100, height: 100, alignment: .center)
                                    .background(Color.gray)
                                    .cornerRadius(12)
                            }
                        }
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
                    Button("Close") {
                        selectedItem = nil
                    }
                    .padding()
                }
                .padding()
            }
        }
    }
}

#Preview {
    ToolsView()
}
