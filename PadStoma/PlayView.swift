import SwiftUI

struct PlayView: View {
    @EnvironmentObject var router: NavigationRouter

    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    Button(action: {
                        router.path.append(.colostony)
                    }, label: {
                        Text("Colostomy")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 150)
                            .background(Color.blue)
                            .cornerRadius(12)
                            .shadow(radius: 5)
                    })

                    Button(action: {
                        // Disabled for now
                    }, label: {
                        Text("Ileostomy")
                            .font(.headline)
                            .foregroundColor(.gray)
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 150)
                            .background(Color.gray.opacity(0.5))
                            .cornerRadius(12)
                            .shadow(radius: 5)
                    })
                    .disabled(true)
                }
                .padding()
            }
        }
        .padding()
        .navigationTitle("Make your selection")
    }
}

#Preview {
    PlayView().environmentObject(NavigationRouter())
}
